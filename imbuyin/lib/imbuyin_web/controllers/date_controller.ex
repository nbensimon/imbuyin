defmodule Imbuyin.DateController do
  @moduledoc """
  Controllers are where the application gathers the requisite data to present to views, which
  in turn prepare the data for presentation. Here, we can short-circuit this process since
  the backend isn't responsible for rendering any HTML. We can directly return JSON responses
  from the controller.
  """
  # Pattern match against params, return stuff in JSON
  def show(conn, _params) do
    :not_implemented
    # json conn, %{"test": "data"}

#     elif (request.method == 'GET'):
#         query_params = request.GET
#         user = ''
#         #get filtered dates
#         if query_params:
#           user = query_params.get('email')
#           show = query_params.get('show')
#           if show is None:
#             if user:
#                dates_for_email = serializers.serialize("json", 
#                Date.objects.filter(user__exact=user))
#                my_dates = {}
#                my_dates['my_dates'] = []
# 
#                for date in json.loads(dates_for_email):
#                    my_dates['my_dates'].append(date['fields'])
#                #Add the interested users number to response
#                interested_user_count = 0
#                for date in my_dates.get('my_dates'):
#                  for interested_user in date.get('interested_users').split(';'):
#                    interested_user_count += 1
#                  date['interested_user_count'] = interested_user_count
#                return JsonResponse(my_dates, safe=False)   
#         
#         all_dates = serializers.serialize("json", Date.objects.all())
#         #clean up the data
#         json_potential_dates = {}
#         json_potential_dates['potential_dates'] = []
#         for date in json.loads(all_dates):
#             # don't add my date to the list
#             #print date['fields']['user'] # DEBUG
#             if user != date['fields']['user']: 
#                json_potential_dates['potential_dates'].append(date['fields'])
#         return JsonResponse(json_potential_dates, safe=False)
  end

  def post(conn, params) do
    :not_implemented
#     if (request.method =='POST'):
#     	#create a date for the loser
#         print (request.body)
#     	if create_date(request.body) is False:
#             return HttpResponseBadRequest('ImBuyin -- Date Not Created')
#     	return HttpResponse('ImBuyin -- Date Created')
  end

  def put(conn, params) do
    :not_implemented
#     elif (request.method == 'PUT'):
#         #Update matched field
#         if update_date(request.body) is False:
#             return HttpResponseNotFound('ImBuyin -- Email does not exist')
#         return HttpResponse("ImBuyin -- Date Updated")
  end

  def delete(conn, params) do
#     elif (request.method == 'DELETE'):
#         #Update matched field
#         if cancel_date(request.body) is False:
#             return HttpResponseNotFound('ImBuyin -- Email does not exist')
#         return HttpResponse("ImBuyin -- Date Cancelled")
#
# def cancel_date(date):
#     json_date = json.loads(date)
#     try:
#         date_to_cancel = Date.objects.get(user=json_date['email'])        
#     except Exception as e:
#         print (e.message)
#         return False
#     if date_to_cancel:
#         date_to_cancel.matched = False
#         date_to_cancel.confirmed_user = ''
#     date_to_cancel.save()
#     
    :not_implemented
  end

  def create(conn, params) do
    :not_implemented
# def create_date(date_data):
#
#     enc_data = json.loads(date_data)
#     try:
#         new_user = User(email=enc_data['email'])
#         new_user.save()
#         new_user.date_set.create(
#             where = enc_data['where'],
#             when = enc_data['when'],
#             imbuyin_value = enc_data['imbuyin_value'],
#             matched = enc_data['matched'])
#     except Exception as e:
#         print (e.message)
#         return False
# 
  end

  def patch(conn, params) do
    :not_implemented
# def update_date(date):
#     json_date = json.loads(date)
#     #print json_date -- Debug
#     confirmed = False
#     interested = False
#     if 'confirmed_email' in json_date:
#        confirmed = True
#     if 'interested_email' in json_date:
#        interested = True
#     try:
#         date_to_update = Date.objects.get(user=json_date['email'])
#     except Exception:
#         return False 
#     if date_to_update:
#        if confirmed:
#           date_to_update.matched = True
#           date_to_update.confirmed_user = json_date['confirmed_email']
#        if interested:
#           print date_to_update.interested_users
#           if date_to_update.interested_users is None:
#              date_to_update.interested_users = json_date['interested_email']
#           else:
#              date_to_update.interested_users += ';' + json_date['interested_email']
#     date_to_update.save()
# 
# 
  end
end
