require 'test_helper'

class ChangesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Change.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Change.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Change.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to change_url(assigns(:change))
  end

  def test_edit
    get :edit, :id => Change.first
    assert_template 'edit'
  end

  def test_update_invalid
    Change.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Change.first
    assert_template 'edit'
  end

  def test_update_valid
    Change.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Change.first
    assert_redirected_to change_url(assigns(:change))
  end

  def test_destroy
    change = Change.first
    delete :destroy, :id => change
    assert_redirected_to changes_url
    assert !Change.exists?(change.id)
  end
end
