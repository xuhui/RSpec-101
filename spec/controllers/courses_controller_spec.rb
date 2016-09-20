require 'rails_helper'

RSpec.describe CoursesController, type: :controller do

  describe "GET index" do
    it "assigns @courses" do
      course1 = FactoryGirl.create(:course)
      course2 = FactoryGirl.create(:course)

      get :index

      expect(assigns[:courses]).to eq([course1,course2])
    end

    it "render template" do
      course1 = FactoryGirl.create(:course)
      course2 = FactoryGirl.create(:course)
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    it "assigns @course" do
      course = FactoryGirl.create(:course)
      get :show, :id => course.id
      expect(assigns[:course]).to eq(course)
    end

    it "render template" do
      course = FactoryGirl.create(:course)
      get :show, :id => course.id
      expect(response).to render_template("show")
    end
  end

  describe "GET new" do
    it "assign @course" do
      course = FactoryGirl.build(:course)
      get :new
      expect(assigns(:course)).to be_new_record
      expect(assigns(:course)).to be_instance_of(Course)
    end

    it "render template" do
      course = FactoryGirl.build(:course)
      get :new
      expect(response).to render_template("new")
    end
  end

end
