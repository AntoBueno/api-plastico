require 'test_helper'

class DatosplasticosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datosplastico = datosplasticos(:one)
  end

  test "should get index" do
    get datosplasticos_url, as: :json
    assert_response :success
  end

  test "should create datosplastico" do
    assert_difference('Datosplastico.count') do
      post datosplasticos_url, params: { datosplastico: { cantidad: @datosplastico.cantidad, fecha: @datosplastico.fecha } }, as: :json
    end

    assert_response 201
  end

  test "should show datosplastico" do
    get datosplastico_url(@datosplastico), as: :json
    assert_response :success
  end

  test "should update datosplastico" do
    patch datosplastico_url(@datosplastico), params: { datosplastico: { cantidad: @datosplastico.cantidad, fecha: @datosplastico.fecha } }, as: :json
    assert_response 200
  end

  test "should destroy datosplastico" do
    assert_difference('Datosplastico.count', -1) do
      delete datosplastico_url(@datosplastico), as: :json
    end

    assert_response 204
  end
end
