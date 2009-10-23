\include "river.ly"

%%%%%%%%%%%%%%%%%%%%%%%
% This file just has the structure and layout. Check out the actual notes
% in river.ly

\header {
  title         = "River"
  tagline       = \markup { 
    All music copyright ©2009 by Lights Poxleitner.
    Engraving by GNU Lilypond -- www.lilypond.org 
  }
  composer      = "Lights"
  %arranger      = "gcr"
  opus          = "The Listening"
  %instrument    = "Piano"
}
#(set-default-paper-size "letter")

%%%%%%%%%%%%%%%%%%%%%%%%
\score { <<
  \new Staff = "lyrics" <<
    % uncomment below to add bar numbers at every measure.
    %\override Score.BarNumber #'break-visibility = #end-of-line-invisible

    % Each measure should consist of eight 8th notes, hence 8/8
    \time 8/8
    %\tempo 4. = 60

    \key c \major
    \new Voice = "lights"  {
      \RiverLyricNotes
    }
    \new Lyrics \lyricsto "lights" {
      \autoBeamOff
      \RiverText
    }

    \new PianoStaff  = "piano" \with { connectArpeggios = ##t } <<
      \new Staff = "upper" {
        \key a \major
        \clef treble
        \RiverPianoRH
      }
      \new Staff = "lower" {
        \key a \major
        \clef bass
        \RiverPianoLH
      }
    >>
  >>
>> }
