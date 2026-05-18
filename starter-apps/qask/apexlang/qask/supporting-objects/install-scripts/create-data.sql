-- load settings

begin
    qask_util.add_setting (
        p_name          => 'max_open_sessions_per_user',
        p_display_order => 10,
        p_description   => 'once this is reached, the user will be prompted to close old sessions before created a new one',
        p_value         => '3',
        p_is_numeric_yn => 'Y',
        p_is_yn         => 'N' );

    qask_util.add_setting (
        p_name          => 'max_session_idle_hours',
        p_display_order => 20,
        p_description   => 'if a session is left open this long, without adding new questions, it can be auto-closed',
        p_value         => '8',
        p_is_numeric_yn => 'Y',
        p_is_yn         => 'N' );

    qask_util.add_setting (
        p_name          => 'from_email',
        p_display_order => 30,
        p_description   => 'used as the from address for the emails sent (for tokens, account requests)',
        p_value         => '',
        p_is_numeric_yn => 'N',
        p_is_yn         => 'N' );

    qask_util.add_setting (
        p_name          => 'allow_account_requests_yn',
        p_display_order => 40,
        p_description   => 'can users request access to the application',
        p_value         => 'Y',
        p_is_numeric_yn => 'N',
        p_is_yn         => 'Y' );

    qask_util.add_setting (
        p_name          => 'restrict_requests_to_email_domains_yn',
        p_display_order => 45,
        p_description   => 'access requests must be within the identified email domains',
        p_value         => 'N',
        p_is_numeric_yn => 'N',
        p_is_yn         => 'Y' );

    qask_util.add_setting (
        p_name          => 'restrict_users_to_email_domains_yn',
        p_display_order => 46,
        p_description   => 'users must be within the identified email domains (if Y, this overrides requests setting)',
        p_value         => 'N',
        p_is_numeric_yn => 'N',
        p_is_yn         => 'Y' );

    qask_util.add_setting (
        p_name          => 'max_tokens',
        p_display_order => 50,
        p_description   => 'how many tokens can be generated during the reset window',
        p_value         => '3',
        p_is_numeric_yn => 'Y',
        p_is_yn         => 'N' );

    qask_util.add_setting (
        p_name          => 'max_verify_attempts_per_token',
        p_display_order => 55,
        p_description   => 'how many verification attempts before a token is no longer valid',
        p_value         => '3',
        p_is_numeric_yn => 'Y',
        p_is_yn         => 'N' );

    qask_util.add_setting (
        p_name          => 'reset_verify_after_x_hours',
        p_display_order => 60,
        p_description   => 'how many hours a user will be locked out after exceeding max tokens/max attempts',
        p_value         => '1',
        p_is_numeric_yn => 'Y',
        p_is_yn         => 'N' );

    qask_util.add_setting (
        p_name          => 'service_available_yn',
        p_display_order => 100,
        p_description   => 'if N, only administrators can access the service - sessions cannot be accessed',
        p_value         => 'Y',
        p_is_numeric_yn => 'N',
        p_is_yn         => 'Y' );
end;
/


-- seed answer sets

declare
    l_answer_set_id  number;
begin

    delete from qask_answer_sets;

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'EXCPO', p_answer_set_name => 'Excellent to Poor');

        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Excellent', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Good', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Fair', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Poor', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Very Poor', p_display_order => 5);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'LIKES', p_answer_set_name => 'Likelyhood');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Most Likely', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Likely', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Unsure', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Not Likely', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Most Unlikely', p_display_order => 5);


    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'TRUEF', p_answer_set_name => 'True False');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'True', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'False', p_display_order => 2);


    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'LOVEH', p_answer_set_name => 'Love Hate');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Love', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Hate', p_display_order => 2);


    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'YESNO', p_answer_set_name => 'Yes No');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Yes', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'No', p_display_order => 2);


    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'YNMAY', p_answer_set_name => 'Yes, No, Unsure');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Yes', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Unsure', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'No', p_display_order => 3);


    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'EASYH', p_answer_set_name => 'Easy');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Very Easy', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Easy', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Medium', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Hard', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Very Hard', p_display_order => 5);


    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'COOLS', p_answer_set_name => 'Cool');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Sub Zero Cool', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Cool', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'OK', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Uncool', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Really Uncool', p_display_order => 5);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'MOSCO', p_answer_set_name => 'MoSCoW');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Must Have', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Should Have', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Could Have', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Won''t Have this time', p_display_order => 4);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'LOEFF', p_answer_set_name => 'Level of Effort');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Very Complex 2 years+-', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Complex 1 year+-', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Hard 2 months+-', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Modest 2 weeks+-', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Easy 2 days+-', p_display_order => 5);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Trivial 2 hours+-', p_display_order => 6);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'UNDER', p_answer_set_name => 'Understanding');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Crystal clear', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Understood', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Got the gist', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Vaguely understood', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'No clue', p_display_order => 5);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'AVERA', p_answer_set_name => 'Average');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Way Above Average', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Above Average', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Average', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Below Average', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Way Below Average', p_display_order => 5);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'COMPE', p_answer_set_name => 'Competitiveness');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Most Competitive', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Competitive', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Middling', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Less Competitive', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Least Competitive', p_display_order => 5);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'WELLN', p_answer_set_name => 'Willingness');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Most willing', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Willing', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Not sure', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Not willing', p_display_order => 4);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'CONSI', p_answer_set_name => 'Consideration');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Not Considering', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Considering', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Not Sure', p_display_order => 3);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'PRIOR', p_answer_set_name => 'Priority');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => '1. Top Priority', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => '0.5 Critical', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => '2. Important', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => '3. Nice to Have', p_display_order => 4);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'STABI', p_answer_set_name => 'Stability');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Rock Solid', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Solid', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Adequate', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Unstable', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Most Unstable', p_display_order => 5);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'VERYS', p_answer_set_name => 'Very Scale');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Very', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Mostly', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Somewhat', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Not Very', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Not at all', p_display_order => 5);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'USEFU', p_answer_set_name => 'Usefullness');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Most useful', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Very useful', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Somewhat useful', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Not very useful', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Not useful at all', p_display_order => 5);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'SATIS', p_answer_set_name => 'Satisfaction');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Very satisfied', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Somewhat satisfied', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Slightly satisfied', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Neither satisfied nor dissatisfied', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Slightly dissatisfied', p_display_order => 5);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Somewhat dissatisfied', p_display_order => 6);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Very dissatisfied', p_display_order => 7);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'HELPF', p_answer_set_name => 'Helpfulness');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Extremely helpful', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Very helpful', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Somewhat helpful', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Not so helpful', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Not at all helpful', p_display_order => 5);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'STATU', p_answer_set_name => 'Status');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Not Considering', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Considering', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Work Initiated', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Substantial Progress Made', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Fully Implemented', p_display_order => 5);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Unknown', p_display_order => 6);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'WHENT', p_answer_set_name => 'Action');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Immediately', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Soon', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'When time permits', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'At some point', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Never', p_display_order => 5);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'RATIO', p_answer_set_name => 'Rationale');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Cost', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Capability', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Performance', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Security', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Availability', p_display_order => 5);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'INDUS', p_answer_set_name => 'Industry');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Automotive', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Banking & Finance', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Biotechnology', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Commerce', p_display_order => 4);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Construction', p_display_order => 5);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Defense', p_display_order => 6);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Distribution', p_display_order => 7);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Education', p_display_order => 8);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Energy', p_display_order => 9);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Entertainment', p_display_order => 10);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Government', p_display_order => 11);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Health', p_display_order => 12);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Hospitality', p_display_order => 13);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Manufacturing', p_display_order => 14);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Marketing', p_display_order => 15);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Retail', p_display_order => 16);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Technology', p_display_order => 17);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Transportation', p_display_order => 18);

    l_answer_set_id := qask_util.add_answer_set (p_answer_set_code => 'REGIO', p_answer_set_name => 'Regions');
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Asia Pacific', p_display_order => 1);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'Europe, Middleeast and Africa', p_display_order => 2);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'North America', p_display_order => 3);
        qask_util.add_aset_answer (p_answer_set_id => l_answer_set_id, p_answer_text => 'South America', p_display_order => 4);

end;
/

insert into qask_service_terms
    (service_terms, current_yn)
values
    ('<p><b>This is an example Terms of Service</b><br/>
    These terms can be updated on the Admin page or they can be turned off.  To turn them off, simply edit the current Terms and then switch off Current.  Only one set of terms can be current but there do not need to be any.</p>','Y');