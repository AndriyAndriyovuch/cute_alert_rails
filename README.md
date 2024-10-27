
# Cute Alert Rails

Cute Alert Rails is a gem that integrates the [Cute Alert](https://github.com/gustavosmanc/cute-alert) alerts library into your Rails application, making it more user-friendly.


[Examples](https://gustavosmanc.github.io/cute-alert/storybook/?path=/story/cutealert-alert--playground)

## Installation

Install the gem and add to the application's Gemfile by adding:

  

```
gem cute_alert_rails
```

or 

```
bundle add cute_alert_rails
```

  

If bundler is not being used to manage dependencies, install the gem by executing:

  

```gem install cute_alert_rails```

  

## Usage

  

1. add to your ```config/importmap.rb``` next:
```
pin "cute_alert", to: "cute_alert.js"
```


2. add to your ```app/assets/stylesheets/application.css``` next:
```
*= require cute_alert
```

3. add to your ```app/views/layouts/application.html.erb``` next:
```
<%= javascript_include_tag 'cute_alert' %>
```
or add to your ```app/javascript/application.js```:
```
import "cute_alert"
```

4.  run ```bundle``` to install gem

Done, you're great and now you're able to use these pretty alerts

-----------------------



Also a good practice will be to use Stimulus controller (if you use stimulus) to call this alerts:
1. Generate controlller:
```
rails g stimulus cutealert
```
2. add some code you want to controller:
```
# app/javascript/controllers/cutealert_controller.js

import  {  Controller  }  from  "@hotwired/stimulus"
export  default  class  extends  Controller  {
	static  targets  = ["submit"]

	successToast()  {
		cuteToast({
                    type:  'success',
                    title:  "Great",
                    message:  "Product was successfully added",
                    timer:  5000
		})
	}
}
``` 
3. Add this to your button:
```
<div  data-controller="cutealert">
	<%=  form_with  url:  add_product_in_cart_path(product)  do  |f|  %>
	...
		<%=  f.submit  "Add to cart", class:  "btn-black", data:  {
                                                            cutealert_target:  "submit",
                                                            action:  "click->cutealert#successToast",
                                                            turbo:  false }  %>
	<%  end  %>
</div>
```

Done, you've made it, enjoy

P.S. For full js documentation visit https://github.com/gustavosmanc/cute-alert 
  

## Contributing

  

Bug reports and pull requests are welcome on GitHub at https://github.com/AndriyAndriyovuch/cute_alert_rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/AndriyAndriyovuch/cute_alert_rails/blob/master/CODE_OF_CONDUCT.md).

  

## License

  

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

  

## Code of Conduct

  

Everyone interacting in the CuteAlertRails project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/cute_alert_rails/blob/master/CODE_OF_CONDUCT.md).
