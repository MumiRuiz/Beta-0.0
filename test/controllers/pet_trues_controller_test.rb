require 'test_helper'

class PetTruesControllerTest < ActionController::TestCase
  setup do
    @pet_true = pet_trues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pet_trues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pet_true" do
    assert_difference('PetTrue.count') do
      post :create, pet_true: { age: @pet_true.age, city: @pet_true.city, country: @pet_true.country, gender: @pet_true.gender, institution_id: @pet_true.institution_id, kind: @pet_true.kind, name: @pet_true.name, region: @pet_true.region, size: @pet_true.size, story: @pet_true.story, user_id: @pet_true.user_id }
    end

    assert_redirected_to pet_true_path(assigns(:pet_true))
  end

  test "should show pet_true" do
    get :show, id: @pet_true
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pet_true
    assert_response :success
  end

  test "should update pet_true" do
    patch :update, id: @pet_true, pet_true: { age: @pet_true.age, city: @pet_true.city, country: @pet_true.country, gender: @pet_true.gender, institution_id: @pet_true.institution_id, kind: @pet_true.kind, name: @pet_true.name, region: @pet_true.region, size: @pet_true.size, story: @pet_true.story, user_id: @pet_true.user_id }
    assert_redirected_to pet_true_path(assigns(:pet_true))
  end

  test "should destroy pet_true" do
    assert_difference('PetTrue.count', -1) do
      delete :destroy, id: @pet_true
    end

    assert_redirected_to pet_trues_path
  end
end
