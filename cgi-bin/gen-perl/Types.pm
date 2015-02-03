#
# Autogenerated by Thrift Compiler (0.9.1)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#
require 5.6.0;
use strict;
use warnings;
use Thrift;

package Source_new;
use base qw(Class::Accessor);
Source_new->mk_accessors( qw( number time source destination protocol info length ) );

sub new {
  my $classname = shift;
  my $self      = {};
  my $vals      = shift || {};
  $self->{number} = undef;
  $self->{time} = undef;
  $self->{source} = undef;
  $self->{destination} = undef;
  $self->{protocol} = undef;
  $self->{info} = undef;
  $self->{length} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{number}) {
      $self->{number} = $vals->{number};
    }
    if (defined $vals->{time}) {
      $self->{time} = $vals->{time};
    }
    if (defined $vals->{source}) {
      $self->{source} = $vals->{source};
    }
    if (defined $vals->{destination}) {
      $self->{destination} = $vals->{destination};
    }
    if (defined $vals->{protocol}) {
      $self->{protocol} = $vals->{protocol};
    }
    if (defined $vals->{info}) {
      $self->{info} = $vals->{info};
    }
    if (defined $vals->{length}) {
      $self->{length} = $vals->{length};
    }
  }
  return bless ($self, $classname);
}

sub getName {
  return 'Source_new';
}

sub read {
  my ($self, $input) = @_;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^1$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{number});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^2$/ && do{      if ($ftype == TType::DOUBLE) {
        $xfer += $input->readDouble(\$self->{time});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^3$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{source});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^4$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{destination});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^5$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{protocol});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^6$/ && do{      if ($ftype == TType::STRING) {
        $xfer += $input->readString(\$self->{info});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
      /^7$/ && do{      if ($ftype == TType::I64) {
        $xfer += $input->readI64(\$self->{length});
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my ($self, $output) = @_;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('Source_new');
  if (defined $self->{number}) {
    $xfer += $output->writeFieldBegin('number', TType::I64, 1);
    $xfer += $output->writeI64($self->{number});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{time}) {
    $xfer += $output->writeFieldBegin('time', TType::DOUBLE, 2);
    $xfer += $output->writeDouble($self->{time});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{source}) {
    $xfer += $output->writeFieldBegin('source', TType::STRING, 3);
    $xfer += $output->writeString($self->{source});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{destination}) {
    $xfer += $output->writeFieldBegin('destination', TType::STRING, 4);
    $xfer += $output->writeString($self->{destination});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{protocol}) {
    $xfer += $output->writeFieldBegin('protocol', TType::STRING, 5);
    $xfer += $output->writeString($self->{protocol});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{info}) {
    $xfer += $output->writeFieldBegin('info', TType::STRING, 6);
    $xfer += $output->writeString($self->{info});
    $xfer += $output->writeFieldEnd();
  }
  if (defined $self->{length}) {
    $xfer += $output->writeFieldBegin('length', TType::I64, 7);
    $xfer += $output->writeI64($self->{length});
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

1;
