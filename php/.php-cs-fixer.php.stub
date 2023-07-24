<?php
/*
 * This document has been generated with
 * https://mlocati.github.io/php-cs-fixer-configurator/#version:3.11.0|configurator
 * you can change this configuration by importing this file.
 */
$config = new PhpCsFixer\Config();
return $config
    ->setRiskyAllowed(true)
    ->setRules([
        '@PHP81Migration' => true,
        '@PSR2' => true,
        '@PSR12' => true,

        // Each line of multi-line DocComments must have an asterisk [PSR-5] and must be aligned with the first one.
        'align_multiline_comment' => true,

        // A single space or none should be between cast and variable.
        'cast_spaces' => true,

        // Class, trait and interface elements must be separated with one or none blank line.
        'class_attributes_separation' => ['elements'=>['const'=>'one','property'=>'one','method'=>'one','trait_import'=>'none','case'=>'none']],

        // Replace multiple nested calls of `dirname` by only one call with second `$level` parameter. Requires PHP >= 7.0.
        'combine_nested_dirname' => true,

        // Force strict types declaration in all files. Requires PHP >= 7.0.
        'declare_strict_types' => true,

        // Replace `get_class` calls on object variables with class keyword syntax.
        'get_class_to_class_keyword' => true,

        // Function `implode` must be called with 2 arguments in the documented order.
        'implode_call' => true,

        // Replace `strpos()` calls with `str_starts_with()` or `str_contains()` if possible.
        'modernize_strpos' => true,

        // Removes `final` from methods where possible.
        'no_unneeded_final_method' => ['private_methods'=>false],

        // Remove Zero-width space (ZWSP), Non-breaking space (NBSP) and other invisible unicode symbols.
        'non_printable_character' => true,

        // All PHPUnit test cases should have `@small`, `@medium` or `@large` annotation to enable run time limits.
        'php_unit_size_class' => true,

        // Changes doc blocks from single to multi line, or reversed. Works for class constants, properties and methods only.
        'phpdoc_line_span' => ['const'=>'multi','property'=>'multi','method'=>'multi'],

        // Annotations in PHPDoc should be grouped together so that annotations of the same type immediately follow each other. Annotations of a different type are separated by a single blank line.
        'phpdoc_separation' => true,

        // Fixes casing of PHPDoc tags.
        'phpdoc_tag_casing' => true,

        // Converts `pow` to the `**` operator.
        'pow_to_exponentiation' => true,

        // Replaces `rand`, `srand`, `getrandmax` functions calls with their `mt_*` analogs or `random_int`.
        'random_api_migration' => true,

        // Inside a `final` class or anonymous class `self` should be preferred to `static`.
        'self_static_accessor' => true,

        // Simplify `if` control structures that return the boolean result of their condition.
        'simplified_if_return' => true,

        // A return statement wishing to return `void` should not return `null`.
        'simplified_null_return' => true,

        // Add `void` return type to functions with missing or empty return statements, but priority is given to `@return` annotations. Requires PHP >= 7.1.
        'void_return' => true,
    ])
    ->setFinder(PhpCsFixer\Finder::create()
        ->exclude('vendor')
        ->in(__DIR__)
    )
;
