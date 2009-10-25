\version "2.12.1"

%{

          888      8888888 .d8888b.  888    888 88888888888 .d8888b.
          888        888  d88P  Y88b 888    888     888    d88P  Y88b
          888        888  888    888 888    888     888    Y88b.
          888        888  888        8888888888     888     "Y888b.
          888        888  888  88888 888    888     888        "Y88b.
          888        888  888    888 888    888     888          "888
          888        888  Y88b  d88P 888    888     888    Y88b  d88P
          88888888 8888888 "Y8888P88 888    888     888     "Y8888P"

                                 Up Up and Away
                                 The Listening

                   Composed and arranged by Lights Poxleitner
                  Arranged for vocals and piano just for you!

%}

UpUpChorusText = \lyricmode {
  We are rock -- ets in the sky.
  We are plan -- ets pass -- ing by.
  Up up and a -- way!
  For -- get me; go your own way.
}

% I got these lyrics by listening to the song. Thanks to Miss Lights for these
% lyrics.
UpUpText = \lyricmode {
  We had a rock -- et
  that fell out of or -- bit.
  We could -- n't stop it;
  we could -- n't con -- trol it.

  We ran a good course.
  It was a good flight.
  But I felt a hard force
  % heart?
  hold -- ing me too tight.

  \UpUpChorusText

  Some -- times a heart cools
  af -- ter the heat goes.
  And_some -- times the mind fo -- ols;
  on -- ly the bo -- dy knows.

  \UpUpChorusText

  % resting here

  % \dreamy {
  Up up and a -- way!
  Up up and a -- way!
  Up up and a -- way!
  Up up and a -- way!
  % }

  \UpUpChorusText
  \UpUpChorusText

  % fin.
}

%%%%%%%%%%%%%%%%%%%
\parallelMusic #'(UpUpIntroRH UpUpIntroLH) {
  c c c c |
  c c c c |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
UpUpLyricsNotes = \relative c'' {
c
}

UpUpPianoRH = \relative c' {
  \UpUpIntroRH
}

UpUpPianoLH = \relative c {
  \UpUpIntroLH
}


