Rails.application.routes.draw do
  mount Chartjs::Zoomable::Engine => "/chartjs-zoomable"
end
