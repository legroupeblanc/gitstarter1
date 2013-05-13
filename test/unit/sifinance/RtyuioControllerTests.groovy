package sifinance



import org.junit.*
import grails.test.mixin.*

@TestFor(RtyuioController)
@Mock(Rtyuio)
class RtyuioControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/rtyuio/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.rtyuioInstanceList.size() == 0
        assert model.rtyuioInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.rtyuioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.rtyuioInstance != null
        assert view == '/rtyuio/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/rtyuio/show/1'
        assert controller.flash.message != null
        assert Rtyuio.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/rtyuio/list'

        populateValidParams(params)
        def rtyuio = new Rtyuio(params)

        assert rtyuio.save() != null

        params.id = rtyuio.id

        def model = controller.show()

        assert model.rtyuioInstance == rtyuio
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/rtyuio/list'

        populateValidParams(params)
        def rtyuio = new Rtyuio(params)

        assert rtyuio.save() != null

        params.id = rtyuio.id

        def model = controller.edit()

        assert model.rtyuioInstance == rtyuio
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/rtyuio/list'

        response.reset()

        populateValidParams(params)
        def rtyuio = new Rtyuio(params)

        assert rtyuio.save() != null

        // test invalid parameters in update
        params.id = rtyuio.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/rtyuio/edit"
        assert model.rtyuioInstance != null

        rtyuio.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/rtyuio/show/$rtyuio.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        rtyuio.clearErrors()

        populateValidParams(params)
        params.id = rtyuio.id
        params.version = -1
        controller.update()

        assert view == "/rtyuio/edit"
        assert model.rtyuioInstance != null
        assert model.rtyuioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/rtyuio/list'

        response.reset()

        populateValidParams(params)
        def rtyuio = new Rtyuio(params)

        assert rtyuio.save() != null
        assert Rtyuio.count() == 1

        params.id = rtyuio.id

        controller.delete()

        assert Rtyuio.count() == 0
        assert Rtyuio.get(rtyuio.id) == null
        assert response.redirectedUrl == '/rtyuio/list'
    }
}
