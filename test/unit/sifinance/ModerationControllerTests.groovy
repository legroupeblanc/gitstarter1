package sifinance



import org.junit.*
import grails.test.mixin.*

@TestFor(ModerationController)
@Mock(Moderation)
class ModerationControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/moderation/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.moderationInstanceList.size() == 0
        assert model.moderationInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.moderationInstance != null
    }

    void testSave() {
        controller.save()

        assert model.moderationInstance != null
        assert view == '/moderation/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/moderation/show/1'
        assert controller.flash.message != null
        assert Moderation.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/moderation/list'

        populateValidParams(params)
        def moderation = new Moderation(params)

        assert moderation.save() != null

        params.id = moderation.id

        def model = controller.show()

        assert model.moderationInstance == moderation
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/moderation/list'

        populateValidParams(params)
        def moderation = new Moderation(params)

        assert moderation.save() != null

        params.id = moderation.id

        def model = controller.edit()

        assert model.moderationInstance == moderation
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/moderation/list'

        response.reset()

        populateValidParams(params)
        def moderation = new Moderation(params)

        assert moderation.save() != null

        // test invalid parameters in update
        params.id = moderation.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/moderation/edit"
        assert model.moderationInstance != null

        moderation.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/moderation/show/$moderation.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        moderation.clearErrors()

        populateValidParams(params)
        params.id = moderation.id
        params.version = -1
        controller.update()

        assert view == "/moderation/edit"
        assert model.moderationInstance != null
        assert model.moderationInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/moderation/list'

        response.reset()

        populateValidParams(params)
        def moderation = new Moderation(params)

        assert moderation.save() != null
        assert Moderation.count() == 1

        params.id = moderation.id

        controller.delete()

        assert Moderation.count() == 0
        assert Moderation.get(moderation.id) == null
        assert response.redirectedUrl == '/moderation/list'
    }
}
