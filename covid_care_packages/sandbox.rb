# Form page


# Start your new package

# Who are we sending this to? (Name, Addr)

# Here are all of our items, in a table w/ columns item.name, item.price, item.description

# Check off the ones you want (collection select check boxes?)

# Optional message field

# Order button


So what is this? a item/index page, formatted by HTML? and using Ruby to add price/description as seen on item show page?


This can be our SKATEBOARD, add_to_cart etc. can be our scooter?



<h1> Build Your Covid Care Package </h1>

<h2> Who are we sending this gift to? </h2>

<% form_tag do %>
<div id = recipient_info>
<%= label_tag :recipient_name, "Recipient Name" %>
<%= text_field_tag :recipient_name %>

<%= label_tag :recipient_address, "Recipient Address" %>
<%= text_area_tag :recipient_name %>

<%= label_tag :recipient_message, "Leave a note for your friend" %>
<%= text_area_tag :recipient_message %>

<% @items.each do |item| %>
<%= check_box_tag item.name %>





<ul>
        <% @items.each do |item| %>
        <%=form_for item do |f| %> 
            <%= f.label :name, item.name %>
            <%= f.check_box :name %>


        <% end %>
        <% end %>
    </ul>
