package sifinance

import org.springframework.dao.DataIntegrityViolationException

class ModerationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [moderationInstanceList: Moderation.list(params), moderationInstanceTotal: Moderation.count()]
    }

    def create() {
        [moderationInstance: new Moderation(params)]
    }

    def save() {
        def moderationInstance = new Moderation(params)
        if (!moderationInstance.save(flush: true)) {
            render(view: "create", model: [moderationInstance: moderationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'moderation.label', default: 'Moderation'), moderationInstance.id])
        redirect(action: "show", id: moderationInstance.id)
    }

    def show(Long id) {
        def moderationInstance = Moderation.get(id)
        if (!moderationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'moderation.label', default: 'Moderation'), id])
            redirect(action: "list")
            return
        }

        [moderationInstance: moderationInstance]
    }

    def edit(Long id) {
        def moderationInstance = Moderation.get(id)
        if (!moderationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'moderation.label', default: 'Moderation'), id])
            redirect(action: "list")
            return
        }

        [moderationInstance: moderationInstance]
    }

    def update(Long id, Long version) {
        def moderationInstance = Moderation.get(id)
        if (!moderationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'moderation.label', default: 'Moderation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (moderationInstance.version > version) {
                moderationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'moderation.label', default: 'Moderation')] as Object[],
                          "Another user has updated this Moderation while you were editing")
                render(view: "edit", model: [moderationInstance: moderationInstance])
                return
            }
        }

        moderationInstance.properties = params

        if (!moderationInstance.save(flush: true)) {
            render(view: "edit", model: [moderationInstance: moderationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'moderation.label', default: 'Moderation'), moderationInstance.id])
        redirect(action: "show", id: moderationInstance.id)
    }

    def delete(Long id) {
        def moderationInstance = Moderation.get(id)
        if (!moderationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'moderation.label', default: 'Moderation'), id])
            redirect(action: "list")
            return
        }

        try {
            moderationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'moderation.label', default: 'Moderation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'moderation.label', default: 'Moderation'), id])
            redirect(action: "show", id: id)
        }
    }
    
    
     def customsave() {
        
        params.url = params.ur
     
        
        def moderationInstance = new Moderation(params)
        if (!moderationInstance.save(flush: true)) {
            //render(view: "create", model: [moderationInstance: moderationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'moderation.label', default: 'Moderation'), moderationInstance.id])
        redirect(uri: moderationInstance.url.substring(10))
       
    }
}
