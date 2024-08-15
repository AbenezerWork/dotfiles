return {
    {
        "xeluxee/competitest.nvim",
        dependencies = "MunifTanjim/nui.nvim",

        opts = {
            runner_ui = {
                interface = "split",
            },
            split_ui = {
                position = "right",
                relative_to_editor = true,
                total_width = 0.3,
            },
            evaluate_template_modifiers = true,
            template_file = { cpp = "~/contests/templates/main.cpp", python = "~/contests/templates/main.py" },
            receive_print_message = false,
            testcases_directory = "./testcases",
            view_output_diff = true,
        },
    },
}
