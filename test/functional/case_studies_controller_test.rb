require 'test_helper'

class CaseStudiesControllerTest < ActionController::TestCase
  setup do
    @case_study = case_studies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:case_studies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create case_study" do
    assert_difference('CaseStudy.count') do
      post :create, case_study: { awards: @case_study.awards, collaborators: @case_study.collaborators, description: @case_study.description, highlights: @case_study.highlights, is_active: @case_study.is_active, is_featured: @case_study.is_featured, location: @case_study.location, opening_date: @case_study.opening_date, summary: @case_study.summary, title: @case_study.title }
    end

    assert_redirected_to case_study_path(assigns(:case_study))
  end

  test "should show case_study" do
    get :show, id: @case_study
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @case_study
    assert_response :success
  end

  test "should update case_study" do
    put :update, id: @case_study, case_study: { awards: @case_study.awards, collaborators: @case_study.collaborators, description: @case_study.description, highlights: @case_study.highlights, is_active: @case_study.is_active, is_featured: @case_study.is_featured, location: @case_study.location, opening_date: @case_study.opening_date, summary: @case_study.summary, title: @case_study.title }
    assert_redirected_to case_study_path(assigns(:case_study))
  end

  test "should destroy case_study" do
    assert_difference('CaseStudy.count', -1) do
      delete :destroy, id: @case_study
    end

    assert_redirected_to case_studies_path
  end
end
