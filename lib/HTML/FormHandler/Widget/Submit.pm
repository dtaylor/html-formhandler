package HTML::FormHandler::Widget::Submit;

use Moose::Role;
#with 'HTML::FormHandler::Widget::Wrapper::Div';

has 'no_render_label' => ( is => 'ro', lazy => 1, default => 1 );

sub render
{
   my ( $self, $result ) = @_;

   $result ||= $self->result;
   my $output = '<input type="submit" name="';
   $output .= $self->html_name . '"';
   $output .= ' id="' . $self->id . '"';
   $output .= ' value="' . $self->value . '" />';
   return $self->render_field($result, $output);
}

1;