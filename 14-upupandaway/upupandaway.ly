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
\parallelMusic #'(UpUpIntroRHA UpUpIntroLHA) {
  % 1.
  r8 f c' bes4 ees,8 bes' aes |
  f2 ees |

  % 2.
  r8 c, ees aes g ees c r8 |
  aes,2.. aes8 |

  % 3.
  r8 f c' bes4 ees,8 bes' aes |
  f'2 ees |

  % 4.
  r8 c, ees aes8 ~ aes2 |
  aes,1 |
}

\parallelMusic #'(UpUpIntroRHB UpUpIntroLHB) {
  r4 <aes c>8  <g bes>4.  <g bes>8 <ees aes>8 ~ |
  << {s1}\\{ <f, f'>2 <ees ees'> } \\ { s8 c'4. s8 bes4. } >> |
     % this blank voice here is to reverse the direction of the stems

  r8 c ees aes4. g4 |
  <aes ees'>1 |

  r4 <aes c>8  <g ees'>4.  <g ees'>8 <ees c'>8 ~ |
  << {s1}\\{ <f f'>2 <ees ees'> } \\ { s8 c'4. s8 bes4. } >> |
     % this blank voice here is to reverse the direction of the stems

  \set tieWaitForNote = ##t % broken ties
  <ees c'>8 bes ~ c ~ ees8 ~ <bes c ees>2 |
  <aes ees'>1 |
}

UpUpVoiceA = {
  % We had a rocket
  f8 f f ees4 c4. ~ |
  c2 r4. aes8 |

  % that fell out of orbit
  c8 c c bes4 aes4. ~ |
  aes4 r2. |

  % We couldn't stop it
  f'8 f f ees16( f ees8) c4. |
  r2.. aes8 |
  % FEAR the DOUBLE DOTTED HALF REST!

  % couldn't control it.
  c8 c c ees4 aes,4. ~ |
  aes4 r2. |
}

UpUpVoiceB = {
  % We ran a good course
  f'8 f f ees4 c4. ~ |
  c2 r2 |

  % it was a good flight ...but
  c8 c c ees4 aes,4. ~ |
  aes4. r2 c8 |

  % I felt a hard force
  f8 f f ees16( f ees8) c4( bes8) ~|
  bes2 r2 |

  % holding me too tight. We are
  c8 c c ees4 aes,4. ~ |
  aes4 r2 c8 ees |

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
UpUpLyricsNotes = \relative c'' {
  r1 r r r |
  \UpUpVoiceA
  \UpUpVoiceB
}

UpUpPianoRH = \relative c' {
  \UpUpIntroRHA
  \UpUpIntroRHA
  \UpUpIntroRHA
  \UpUpIntroRHB
}

UpUpPianoLH = {
  \relative c { \UpUpIntroLHA }
  \relative c { \UpUpIntroLHA }
  \relative c { \UpUpIntroLHA }
  \relative c { \UpUpIntroLHB }
}


