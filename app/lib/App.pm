package App;

use v5.38;
use Mojo::Base 'Mojolicious', -signatures;

# Route
sub startup ($self) {
  $self->routes->get('/hello')->to('App#hello');
}
 
# Controller
package App::Controller::App;
use Mojo::Base 'Mojolicious::Controller', -signatures;
 
# Action
sub hello ($self) {
  $self->render(text => 'Hello World!');
}
