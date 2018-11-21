# chartjs-zoomable
Simplifies usage of Chart.js in Rails views with zoom and pan plugin!

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'chartjs-zoomable'
```

And then execute:
```bash
$ bundle
```
Add the following to your `application.js`:
```javascript
$ //= require chartjs/zoomable/application.js
```

## Usage
Each chart type has a corresponding helper for your views.  The helper methods take the same arguments as their Javascript counterparts.  The `options` are optional. They allow you to make a graph zoomable:

```erb
<%= line_chart           data, options %>
<%= bar_chart            data, options %>
<%= horizontal_bar_chart data, options %>
<%= radar_chart          data, options %>
<%= polar_area_chart     data, options %>
<%= pie_chart            data, options %>
<%= doughnut_chart       data, options %>
<%= bubble_chart         data, options %>
<%= scatter_chart        data, options %>
```

If you don't want these helpers – perhaps they clash with other methods in your views – add this initializer to your app:

```ruby
# config/initializers/chartjs.rb
Chartjs.no_conflict!
```

Then you can use these helpers instead:

```erb
<%= chartjs_line_chart           data, options %>
<%= chartjs_bar_chart            data, options %>
<%= chartjs_horizontal_bar_chart data, options %>
<%= chartjs_radar_chart          data, options %>
<%= chartjs_polar_area_chart     data, options %>
<%= chartjs_pie_chart            data, options %>
<%= chartjs_doughnut_chart       data, options %>
<%= chartjs_bubble_chart         data, options %>
<%= chartjs_scatter_chart        data, options %>
```

For example, to render a [line chart][linechart] with zoom:

```ruby
data = {
  labels: ["March", "April", "May", "June", "July", "August", "September"],
  datasets: [
    {
        label: "My First dataset",
        backgroundColor: "rgba(220,220,220,0.2)",
        borderColor: "rgba(220,220,220,1)",
        data: [67, 58, 80, 81, 56, 55, 40]
    },
    {
        label: "My Second dataset",
        backgroundColor: "rgba(151,187,205,0.2)",
        borderColor: "rgba(151,187,205,1)",
        data: [28, 48, 40, 19, 86, 27, 91]
    }
  ]
}
options = {
  id: "my_first_graph",
  zoom: {
    enabled: true,
    mode: 'x',
  },
}
<%= line_chart data, options %>
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
