

# Initialize a Keyboard
kbd = Keyboard.new


r0 = 15
r1 = 14
r2 = 13
r3 = 12
r4 = 11
r5 = 20
r6 = 19
r7 = 18
r8 = 17
r9 = 16
c1 = 6
c2 = 7
c3 = 8
c4 = 9

# Note that defferent from init_pins
kbd.init_matrix_pins(
  [
    [ [r0,c1], [r1,c1], [r2,c1], [r3,c1], [r4,c1], [r5,c1],[r6,c1], [r7,c1], [r8,c1], [r9,c1],],
    [ [r0,c2], [r1,c2], [r2,c2], [r3,c2], [r4,c2], [r5,c2],[r6,c2], [r7,c2], [r8,c2], [r9,c2],],
    [ [r0,c3], [r1,c3], [r2,c3], [r3,c3], [r4,c3], [r5,c3],[r6,c3], [r7,c3], [r8,c3], [r9,c3],],
    [ [r0,c4], [r1,c4], [r2,c4], [r3,c4], [r4,c4], [r5,c4],[r6,c4], [r7,c4], [r8,c4], [r9,c4],],
  ]
)

# default layer should be added at first
kbd.add_layer :default, %i(
  Q_GUI    KC_W   KC_E  KC_R   KC_T           KC_Y  KC_U   KC_I   KC_O   KC_P  
  KC_A    KC_S   KC_D  KC_F   KC_G           KC_H  KC_J   KC_K   KC_L   KC_BSPC  
  Z_LSFT    KC_X   KC_C  KC_V   KC_B           KC_N  KC_M   KC_UP   KC_ENTER   KC_NO  
  KC_ESC  KC_LALT  KC_LCTL  SPC_RAISE  SPC_LOWER     KC_RCTL  KC_LEFT   KC_DOWN   KC_RIGHT   KC_NO 
) 

kbd.add_layer :raise, %i(
  KC_1      KC_2   KC_3   KC_4   KC_5               KC_6  KC_7   KC_8   KC_9   KC_0  
  KC_A      KC_S   KC_D   KC_SCOLON   KC_QUOT     KC_H  KC_RBRC   KC_BSLS   KC_MINUS   KC_DEL 
  Z_LSFT      KC_X   KC_INT1   KC_BBLS   KC_SLSH          KC_COMM  KC_DOT   KC_PGUP   KC_ENTER   KC_NO 
  KC_TAB     KC_LALT   KC_LCTL   KC_NO   KC_INT5         KC_RCTL  KC_HOME   KC_PGDN   KC_END   KC_NO
)

kbd.add_layer :lower, %i(
  KC_F1      KC_F2   KC_F3   KC_F4 KC_F5          KC_F6   KC_F7   KC_F8 KC_F9 KC_F10      
  KC_GRAVE   KC_F11   KC_F12   KC_F   KC_G         KC_H  KC_RBRC   KC_BSLS   KC_MINUS   KC_DEL  
  Z_LSFT      KC_X   KC_INT1  KC_BBLS   KC_SLSH     KC_COMM  KC_DOT   KC_PGUP   KC_ENTER   KC_NO  
  KC_TAB      KC_LALT   KC_LCTL   KC_INT4   KC_NO      KC_RCTL  KC_HOME   KC_PGDN   KC_END   KC_NO
)


#
#                   Your custom    Keycode or                          Keycode (only modifiers)    Release time     Re-push time
#                   key name       Array of Keycode                    or Layer Symbol to be held  threshold(ms)    threshold(ms)
#                                  or Proc                             or Proc which will run      to consider as   to consider as
#                                  when you click                      while you keep press        `click the key`  `hold the key`
kbd.define_mode_key :Z_LSFT,    [ :KC_Z,                               :KC_LSFT,                   150,             150 ]
kbd.define_mode_key :Q_GUI, [ :KC_Q, :KC_LGUI, 150, 150]

kbd.define_mode_key :SPC_RAISE, [ :KC_SPACE,                           :raise,                     150,             150 ]
kbd.define_mode_key :SPC_LOWER, [ :KC_SPACE,                           :lower,                     150,             150 ]


kbd.start!


