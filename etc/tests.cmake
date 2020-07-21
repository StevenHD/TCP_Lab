enable_testing ()

set (LOSS_RATE 0.1)

add_test(NAME t_wrapping_ints_cmp    COMMAND wrapping_integers_cmp)
add_test(NAME t_wrapping_ints_unwrap COMMAND wrapping_integers_unwrap)
add_test(NAME t_wrapping_ints_wrap   COMMAND wrapping_integers_wrap)

add_test(NAME t_recv_connect         COMMAND recv_connect)
add_test(NAME t_recv_transmit        COMMAND recv_transmit)
add_test(NAME t_recv_window          COMMAND recv_window)
add_test(NAME t_recv_reorder         COMMAND recv_reorder)
add_test(NAME t_recv_close           COMMAND recv_close)

add_test(NAME t_send_connect         COMMAND send_connect)
add_test(NAME t_send_transmit        COMMAND send_transmit)
add_test(NAME t_send_retx            COMMAND send_retx)
add_test(NAME t_send_window          COMMAND send_window)
add_test(NAME t_send_ack             COMMAND send_ack)
add_test(NAME t_send_close           COMMAND send_close)

add_test(NAME t_strm_reassem_cap         COMMAND fsm_stream_reassembler_cap)
add_test(NAME t_strm_reassem_single      COMMAND fsm_stream_reassembler_single)
add_test(NAME t_strm_reassem_seq         COMMAND fsm_stream_reassembler_seq)
add_test(NAME t_strm_reassem_dup         COMMAND fsm_stream_reassembler_dup)
add_test(NAME t_strm_reassem_holes       COMMAND fsm_stream_reassembler_holes)
add_test(NAME t_strm_reassem_many        COMMAND fsm_stream_reassembler_many)
add_test(NAME t_strm_reassem_overlapping COMMAND fsm_stream_reassembler_overlapping)
add_test(NAME t_strm_reassem_win         COMMAND fsm_stream_reassembler_win)

add_test(NAME t_byte_stream_construction COMMAND byte_stream_construction)
add_test(NAME t_byte_stream_one_write    COMMAND byte_stream_one_write)
add_test(NAME t_byte_stream_two_writes   COMMAND byte_stream_two_writes)
add_test(NAME t_byte_stream_capacity     COMMAND byte_stream_capacity)
add_test(NAME t_byte_stream_many_writes  COMMAND byte_stream_many_writes)

add_test(NAME t_webget               COMMAND "${PROJECT_SOURCE_DIR}/tests/webget_t.sh")

add_test(NAME arp_network_interface    COMMAND net_interface)

add_test(NAME router_test    COMMAND network_simulator)

add_test(NAME t_tcp_parser           COMMAND tcp_parser "${PROJECT_SOURCE_DIR}/tests/ipv4_parser.data")
add_test(NAME t_ipv4_parser          COMMAND ipv4_parser "${PROJECT_SOURCE_DIR}/tests/ipv4_parser.data")
add_test(NAME t_active_close         COMMAND fsm_active_close)
add_test(NAME t_passive_close        COMMAND fsm_passive_close)
add_test(NAME ec_ack_rst             COMMAND fsm_ack_rst)
add_test(NAME t_ack_rst              COMMAND fsm_ack_rst_relaxed)
add_test(NAME ec_ack_rst_win         COMMAND fsm_ack_rst_win)
add_test(NAME t_ack_rst_win          COMMAND fsm_ack_rst_win_relaxed)
add_test(NAME ec_connect             COMMAND fsm_connect)
add_test(NAME t_connect              COMMAND fsm_connect_relaxed)
add_test(NAME ec_listen              COMMAND fsm_listen)
add_test(NAME t_listen               COMMAND fsm_listen_relaxed)
add_test(NAME t_winsize              COMMAND fsm_winsize)
add_test(NAME ec_retx                COMMAND fsm_retx)
add_test(NAME t_retx                 COMMAND fsm_retx_relaxed)
add_test(NAME t_retx_win             COMMAND fsm_retx_win)
add_test(NAME t_loopback             COMMAND fsm_loopback)
add_test(NAME t_loopback_win         COMMAND fsm_loopback_win)
add_test(NAME t_reorder              COMMAND fsm_reorder)

add_test(NAME t_address_dt           COMMAND address_dt)
add_test(NAME t_parser_dt            COMMAND parser_dt)
add_test(NAME t_socket_dt            COMMAND socket_dt)

add_test(NAME t_udp_client_send      COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucS)
add_test(NAME t_udp_server_send      COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usS)
add_test(NAME t_udp_client_recv      COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucR)
add_test(NAME t_udp_server_recv      COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usR)
add_test(NAME t_udp_client_dupl      COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucD)
add_test(NAME t_udp_server_dupl      COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usD)

add_test(NAME t_ucS_1M_32k           COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucSd 1M -w 32K)
add_test(NAME t_ucS_128K_8K          COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucSd 128K -w 8K)
add_test(NAME t_ucS_16_1             COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucSd 16 -w 1)
add_test(NAME t_ucS_32K_d            COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucSd 32K)
add_test(NAME t_ucR_1M_32k           COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucRd 1M -w 32K)
add_test(NAME t_ucR_128K_8K          COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucRd 128K -w 8K)
add_test(NAME t_ucR_16_1             COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucRd 16 -w 1)
add_test(NAME t_ucR_32K_d            COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucRd 32K)
add_test(NAME t_ucD_1M_32k           COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucDd 1M -w 32K)
add_test(NAME t_ucD_128K_8K          COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucDd 128K -w 8K)
add_test(NAME t_ucD_16_1             COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucDd 16 -w 1)
add_test(NAME t_ucD_32K_d            COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucDd 32K)

add_test(NAME t_usS_1M_32k           COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usSd 1M -w 32K)
add_test(NAME t_usS_128K_8K          COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usSd 128K -w 8K)
add_test(NAME t_usS_16_1             COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usSd 16 -w 1)
add_test(NAME t_usS_32K_d            COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usSd 32K)
add_test(NAME t_usR_1M_32k           COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usRd 1M -w 32K)
add_test(NAME t_usR_128K_8K          COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usRd 128K -w 8K)
add_test(NAME t_usR_16_1             COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usRd 16 -w 1)
add_test(NAME t_usR_32K_d            COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usRd 32K)
add_test(NAME t_usD_1M_32k           COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usDd 1M -w 32K)
add_test(NAME t_usD_128K_8K          COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usDd 128K -w 8K)
add_test(NAME t_usD_16_1             COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usDd 16 -w 1)
add_test(NAME t_usD_32K_d            COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usDd 32K)

add_test(NAME t_ucS_128K_8K_l        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucSd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_ucS_128K_8K_L        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucSd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_ucS_128K_8K_lL       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucSd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
add_test(NAME t_ucR_128K_8K_l        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucRd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_ucR_128K_8K_L        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucRd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_ucR_128K_8K_lL       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucRd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
add_test(NAME t_ucD_128K_8K_l        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucDd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_ucD_128K_8K_L        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucDd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_ucD_128K_8K_lL       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -ucDd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})

add_test(NAME t_usS_128K_8K_l        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usSd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_usS_128K_8K_L        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usSd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_usS_128K_8K_lL       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usSd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
add_test(NAME t_usR_128K_8K_l        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usRd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_usR_128K_8K_L        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usRd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_usR_128K_8K_lL       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usRd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
add_test(NAME t_usD_128K_8K_l        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usDd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_usD_128K_8K_L        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usDd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_usD_128K_8K_lL       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -usDd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})

add_test(NAME t_ipv4_client_send     COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icS)
add_test(NAME t_ipv4_server_send     COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isS)
add_test(NAME t_ipv4_client_recv     COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icR)
add_test(NAME t_ipv4_server_recv     COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isR)
add_test(NAME t_ipv4_client_dupl     COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icD)
add_test(NAME t_ipv4_server_dupl     COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isD)

add_test(NAME t_icS_1M_32k           COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icSd 1M -w 32K)
add_test(NAME t_icS_128K_8K          COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icSd 128K -w 8K)
add_test(NAME t_icS_16_1             COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icSd 16 -w 1)
add_test(NAME t_icS_32K_d            COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icSd 32K)
add_test(NAME t_icR_1M_32k           COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icRd 1M -w 32K)
add_test(NAME t_icR_128K_8K          COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icRd 128K -w 8K)
add_test(NAME t_icR_16_1             COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icRd 16 -w 1)
add_test(NAME t_icR_32K_d            COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icRd 32K)
add_test(NAME t_icD_1M_32k           COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icDd 1M -w 32K)
add_test(NAME t_icD_128K_8K          COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icDd 128K -w 8K)
add_test(NAME t_icD_16_1             COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icDd 16 -w 1)
add_test(NAME t_icD_32K_d            COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icDd 32K)

add_test(NAME t_isS_1M_32k           COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isSd 1M -w 32K)
add_test(NAME t_isS_128K_8K          COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isSd 128K -w 8K)
add_test(NAME t_isS_16_1             COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isSd 16 -w 1)
add_test(NAME t_isS_32K_d            COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isSd 32K)
add_test(NAME t_isR_1M_32k           COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isRd 1M -w 32K)
add_test(NAME t_isR_128K_8K          COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isRd 128K -w 8K)
add_test(NAME t_isR_16_1             COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isRd 16 -w 1)
add_test(NAME t_isR_32K_d            COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isRd 32K)
add_test(NAME t_isD_1M_32k           COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isDd 1M -w 32K)
add_test(NAME t_isD_128K_8K          COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isDd 128K -w 8K)
add_test(NAME t_isD_16_1             COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isDd 16 -w 1)
add_test(NAME t_isD_32K_d            COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isDd 32K)

add_test(NAME t_icS_128K_8K_l        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icSd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_icS_128K_8K_L        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icSd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_icS_128K_8K_lL       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icSd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
add_test(NAME t_icR_128K_8K_l        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icRd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_icR_128K_8K_L        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icRd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_icR_128K_8K_lL       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icRd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
add_test(NAME t_icD_128K_8K_l        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icDd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_icD_128K_8K_L        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icDd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_icD_128K_8K_lL       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icDd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})

add_test(NAME t_isS_128K_8K_l        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isSd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_isS_128K_8K_L        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isSd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_isS_128K_8K_lL       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isSd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
add_test(NAME t_isR_128K_8K_l        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isRd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_isR_128K_8K_L        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isRd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_isR_128K_8K_lL       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isRd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
add_test(NAME t_isD_128K_8K_l        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isDd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_isD_128K_8K_L        COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isDd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_isD_128K_8K_lL       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isDd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})

add_test(NAME t_icnS_128K_8K_l       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icSnd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_icnS_128K_8K_L       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icSnd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_icnS_128K_8K_lL      COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icSnd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
add_test(NAME t_icnR_128K_8K_l       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icRnd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_icnR_128K_8K_L       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icRnd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_icnR_128K_8K_lL      COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icRnd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
add_test(NAME t_icnD_128K_8K_l       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icDnd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_icnD_128K_8K_L       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icDnd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_icnD_128K_8K_lL      COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icDnd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})

add_test(NAME t_isnS_128K_8K_l       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isSnd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_isnS_128K_8K_L       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isSnd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_isnS_128K_8K_lL      COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isSnd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
add_test(NAME t_isnR_128K_8K_l       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isRnd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_isnR_128K_8K_L       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isRnd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_isnR_128K_8K_lL      COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isRnd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
add_test(NAME t_isnD_128K_8K_l       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isDnd 128K -w 8K -l ${LOSS_RATE})
add_test(NAME t_isnD_128K_8K_L       COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isDnd 128K -w 8K -L ${LOSS_RATE})
add_test(NAME t_isnD_128K_8K_lL      COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isDnd 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})

#add_test(NAME t_icoS_128K_8K_l   COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icSod 128K -w 8K -l ${LOSS_RATE})
#add_test(NAME t_icoS_128K_8K_L   COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icSod 128K -w 8K -L ${LOSS_RATE})
#add_test(NAME t_icoS_128K_8K_lL  COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icSod 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
#add_test(NAME t_icoR_128K_8K_l   COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icRod 128K -w 8K -l ${LOSS_RATE})
#add_test(NAME t_icoR_128K_8K_L   COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icRod 128K -w 8K -L ${LOSS_RATE})
#add_test(NAME t_icoR_128K_8K_lL  COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icRod 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
#add_test(NAME t_icoD_128K_8K_l   COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icDod 128K -w 8K -l ${LOSS_RATE})
#add_test(NAME t_icoD_128K_8K_L   COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icDod 128K -w 8K -L ${LOSS_RATE})
#add_test(NAME t_icoD_128K_8K_lL  COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -icDod 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})

#add_test(NAME t_isoS_128K_8K_l   COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isSod 128K -w 8K -l ${LOSS_RATE})
#add_test(NAME t_isoS_128K_8K_L   COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isSod 128K -w 8K -L ${LOSS_RATE})
#add_test(NAME t_isoS_128K_8K_lL  COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isSod 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
#add_test(NAME t_isoR_128K_8K_l   COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isRod 128K -w 8K -l ${LOSS_RATE})
#add_test(NAME t_isoR_128K_8K_L   COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isRod 128K -w 8K -L ${LOSS_RATE})
#add_test(NAME t_isoR_128K_8K_lL  COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isRod 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})
#add_test(NAME t_isoD_128K_8K_l   COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isDod 128K -w 8K -l ${LOSS_RATE})
#add_test(NAME t_isoD_128K_8K_L   COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isDod 128K -w 8K -L ${LOSS_RATE})
#add_test(NAME t_isoD_128K_8K_lL  COMMAND "${PROJECT_SOURCE_DIR}/txrx.sh" -isDod 128K -w 8K -l ${LOSS_RATE} -L ${LOSS_RATE})

add_custom_target (check_webget COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure --timeout 10 -R 't_webget'
                              COMMENT "Testing webget...")
add_custom_target (check_lab0 COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure --timeout 10 -R 't_webget|t_byte_stream|_dt'
                              COMMENT "Testing Lab 0...")
add_custom_target (check_lab1 COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure --timeout 10 -R 't_strm_reassem_|t_webget|t_byte_stream|_dt'
                              COMMENT "Testing the stream reassembler...")
add_custom_target (check_lab2 COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure --timeout 10 -R 't_recv_|t_wrapping_|t_strm_reassem_|t_webget|t_byte_stream|_dt'
                              COMMENT "Testing the TCP receiver...")
add_custom_target (check_lab3 COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure --timeout 10 -R 't_send_|t_recv_|t_wrapping_|t_strm_reassem_|t_webget|t_byte_stream|_dt'
                              COMMENT "Testing the TCP sender...")
add_custom_target (check_lab4 COMMAND "${PROJECT_SOURCE_DIR}/tun.sh" check 144 145
                              COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure --timeout 10 -R "^t_"
                              COMMENT "Testing the TCP connection...")
add_custom_target (check_lab5 COMMAND "${PROJECT_SOURCE_DIR}/tap.sh" check 10
                              COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure --timeout 10 -R '^t_webget|^arp_'
                              COMMENT "Testing Lab 5...")
add_custom_target (check_lab6 COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure --timeout 10 -R '^arp_|^router_'
                              COMMENT "Testing Lab 6...")

add_custom_target (check COMMAND "${PROJECT_SOURCE_DIR}/tun.sh" check 144 145
                         COMMAND "${PROJECT_SOURCE_DIR}/tap.sh" check 10
                         COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure --timeout 10 -R '^t_|^arp_|^router_'
                         COMMENT "Testing libsponge...")
