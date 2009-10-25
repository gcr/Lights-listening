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
  % 1.
  r8 f c' bes4 ees,8 bes' aes |
  f2 ees |

  % 2.
  r8 c, ees aes g ees c r8 |
  aes,2. ~ aes8 aes8 |

  % 3.
  r8 f c' bes4 ees,8 bes' aes |
  f'2 ees |

  % 4.
  r8 c, ees aes8 ~ aes2 |
  aes,1 |
}

UpUpVoiceA = {
  % We had a rocket
  f8 f f ees4 c4. ~ |
  c2 r4. aes8 |

  % that fell out of orbit
  c8 c c bes4 aes4. ~ |
  aes4 r2. |

  % We couldn't stop it
  f'8 f f ees16( f ees8) c4. ~ |
  r2.. aes8 |
  % FEAR the DOUBLE DOTTED HALF REST!

  % couldn't control it.
  c8 c c ees4 aes,4. ~ |
  aes4 r2. |
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
UpUpLyricsNotes = \relative c'' {
  r1 r r r |
  \UpUpVoiceA
}

UpUpPianoRH = \relative c' {
  \UpUpIntroRH
  \UpUpIntroRH
  \UpUpIntroRH
}

UpUpPianoLH = {
  \relative c { \UpUpIntroLH }
  \relative c { \UpUpIntroLH }
  \relative c { \UpUpIntroLH }
}


