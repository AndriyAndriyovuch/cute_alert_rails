
# Cute Alert Rails

  This is a gem made of https://github.com/gustavosmanc/cute-alert alerts library to make your Rails app more user friendly


![img](https://camo.githubusercontent.com/ddf94f7a9a24b022af797e104f8bad56f03c8e3af7a48d427095140fdc47c4fb/68747470733a2f2f692e696d6775722e636f6d2f66754b62346c472e706e67)
![](https://camo.githubusercontent.com/4dcdd0cc23db2d168ecd443733b4cef0c4cdd871d3a4ef9a604396a5f71620d0/68747470733a2f2f6d656469612e67697068792e636f6d2f6d656469612f66776e4d4e726b574c73315472784b3661622f67697068792e676966)
  

## Installation

Install the gem and add to the application's Gemfile by adding:

  

```gem cute_alert_rails```

  

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

4. Finally add to your ```app/javascript/application.js```:
```
import "cute_alert"
```

  Done, you're great and now you're able to use these pretty alerts

## Development

First of all run ```bundle``` to install gem

Now you can call it in console, for example
 ```
cuteToast({
	type:  'success', 
	title:  "Great",
	message:  "Product was successfully added",
	timer:  5000
	})
```

and you'll see little alert, if all works well

You can call it everywhere you want

Also a good practice will be to use Stimulus controller (if you use stimulus) to call this alerts:
1. Generate controlller:
```
rails g stimulus cutealert
```
2. add some code you want to controller:
```
# app/javascript/controllers/cutealert_controller.js

import  {  Controller  }  from  "@hotwired/stimulus"
// Connects to data-controller="cutealert"
export  default  class  extends  Controller  {
	static  targets  = ["input"]

	connect()  {
	}

	successToast()  {
		cuteToast({
		type:  'success',
		title:  "Great",
		message:  "Product was successfully added",
		timer:  50000000000
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
                                                            cutealert_target:  "input",
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
