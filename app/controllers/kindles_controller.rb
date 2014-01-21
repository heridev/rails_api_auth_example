class KindlesController < ApplicationController
  respond_to :json
  def index
    values =  {
      models: [
        {
          number: 'uno',
          name: 'jose'
        },
        {
          number: 'dos',
          name: 'juan'
        }
      ]
    }
    respond_with values
  end
end
