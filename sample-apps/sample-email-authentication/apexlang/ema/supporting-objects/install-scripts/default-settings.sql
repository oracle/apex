-- load settings

begin
    eba_ema_util.add_setting (
        p_name          => 'from_email',
        p_display_order => 30,
        p_description   => 'used as the from address for the emails sent (for tokens, account requests)',
        p_value         => '',
        p_is_numeric_yn => 'N',
        p_is_yn         => 'N' );

    eba_ema_util.add_setting (
        p_name          => 'max_tokens',
        p_display_order => 50,
        p_description   => 'how many tokens can be generated during the reset window',
        p_value         => '3',
        p_is_numeric_yn => 'Y',
        p_is_yn         => 'N' );

    eba_ema_util.add_setting (
        p_name          => 'max_verify_attempts_per_token',
        p_display_order => 55,
        p_description   => 'how many verification attempts before a token is no longer valid',
        p_value         => '3',
        p_is_numeric_yn => 'Y',
        p_is_yn         => 'N' );

    eba_ema_util.add_setting (
        p_name          => 'reset_verify_after_x_hours',
        p_display_order => 60,
        p_description   => 'how many hours a user will be locked out after exceeding max tokens/max attempts',
        p_value         => '1',
        p_is_numeric_yn => 'Y',
        p_is_yn         => 'N' );

end;
/