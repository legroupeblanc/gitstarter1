package sifinance

import org.springframework.dao.DataIntegrityViolationException

class RtyuioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [rtyuioInstanceList: Rtyuio.list(params), rtyuioInstanceTotal: Rtyuio.count()]
    }

    def create() {
        [rtyuioInstance: new Rtyuio(params)]
    }

    def save() {
        def rtyuioInstance = new Rtyuio(params)
        if (!rtyuioInstance.save(flush: true)) {
            render(view: "create", model: [rtyuioInstance: rtyuioInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'rtyuio.label', default: 'Rtyuio'), rtyuioInstance.id])
        redirect(action: "show", id: rtyuioInstance.id)
    }

    def show(Long id) {
        def rtyuioInstance = Rtyuio.get(id)
        if (!rtyuioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rtyuio.label', default: 'Rtyuio'), id])
            redirect(action: "list")
            return
        }

        [rtyuioInstance: rtyuioInstance]
    }

    def edit(Long id) {
        def rtyuioInstance = Rtyuio.get(id)
        if (!rtyuioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rtyuio.label', default: 'Rtyuio'), id])
            redirect(action: "list")
            return
        }

        [rtyuioInstance: rtyuioInstance]
    }

    def update(Long id, Long version) {
        def rtyuioInstance = Rtyuio.get(id)
        if (!rtyuioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rtyuio.label', default: 'Rtyuio'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (rtyuioInstance.version > version) {
                rtyuioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'rtyuio.label', default: 'Rtyuio')] as Object[],
                          "Another user has updated this Rtyuio while you were editing")
                render(view: "edit", model: [rtyuioInstance: rtyuioInstance])
                return
            }
        }

        rtyuioInstance.properties = params

        if (!rtyuioInstance.save(flush: true)) {
            render(view: "edit", model: [rtyuioInstance: rtyuioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'rtyuio.label', default: 'Rtyuio'), rtyuioInstance.id])
        redirect(action: "show", id: rtyuioInstance.id)
    }

    def delete(Long id) {
        def rtyuioInstance = Rtyuio.get(id)
        if (!rtyuioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rtyuio.label', default: 'Rtyuio'), id])
            redirect(action: "list")
            return
        }

        try {
            rtyuioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'rtyuio.label', default: 'Rtyuio'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'rtyuio.label', default: 'Rtyuio'), id])
            redirect(action: "show", id: id)
        }
    }
}
