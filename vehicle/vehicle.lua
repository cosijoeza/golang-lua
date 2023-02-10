-- characteristics of the vechicle
unit = {
    id = "3526f272-a807-11ed-afa1-0242ac120002",
    batterylevel = 30  
}

--Message categories
messagesList = {
    "authorization",
    "availability",
    "data",
    "diagnostics",
    "display",
    "firmware",
    "iso15118",
    "localauth",
    "meter",
    "provisioning",
    "remotecontrol",
    "security",
    "smartcharging",
    "tariffcost",
    "transactions",
    "types"

};

messages = {
    authorization = {
        "authorization",
        "authorize",
        "clear_cache"
    },
    availability = {
        "availability",
        "change_availability",
        "heartbeat",
        "status_notification"
    },
    data = {
        "data_transfer",
        "data"
    },
    diagnostics = {
        "clear_variable_monitoring",
        "customer_information",
        "diagnostics",
        "get_log",
        "get_monitoring_report",
        "log_status_notification",
        "notify_customer_information",
        "notify_event",
        "notify_monitoring_report",
        "set_monitoring_base",
        "set_monitoring_level",
        "set_variable_monitoring",
        "types"
    },
    display = {
        "clear_display_message",
        "display",
        "get_display_messages",
        "notify_display_messages",
        "set_display_message",
        "types"
    },
    firmware = {
        "firmware_status_notification",
        "firmware",
        "publish_firmware_status_notification",
        "publish_firmware",
        "unpublish_firmware",
        "update_firmware"
    },
    iso15118 = {
        "delete_certificate",
        "get_15118ev_certificate",
        "get_certificate_status",
        "get_installed_certificate_ids",
        "install_certificate",
        "iso_15118"
    },
    localauth = {
        "get_local_list_version",
        "local_auth_list",
        "send_local_list"
    },
    meter = {
        "meter_values",
        "meter"
    },
    provisioning = {
        "boot_notification",
        "get_base_report",
        "get_report",
        "get_variables",
        "notify_report",
        "provisioning",
        "reset",
        "set_network_profile",
        "set_variables"
    },
    remotecontrol = {
        "remote_control",
        "request_start_transaction",
        "request_stop_transaction",
        "trigger_message",
        "unlock_connector"
    },
    reservation ={
        "cancel_reservation",
        "reservation_status_update",
        "reservation",
        "reserve_now"
    },
    security = {
        "certificate_signed",
        "security_event_notification",
        "security",
        "sign_certificate"
    },
    smartcharging = {
        "clear_charging_profile",
        "cleared_charging_limit",
        "get_charging_profiles",
        "get_composite_schedule",
        "notify_charging_limit",
        "notify_ev_charging_needs",
        "notify_ev_charging_schedule",
        "report_charging_profiles",
        "set_charging_profile",
        "smart_charging"
    },
    tariffcost = {
        "cost_updated",
        "tariff_cost"
    },
    transactions = {
        "get_transaction_status",
        "transaction_event",
        "transactions"
    },
    types = {
        "datetime",
        "types"
    }
};
