<?php

return [
    'filter'                     => 'Filter',
    'everything'                 => 'Everything',
    'image'                      => 'Image',
    'video'                      => 'Video',
    'document'                   => 'Document',
    'view_in'                    => 'View in',
    'all_media'                  => 'All media',
    'trash'                      => 'Trash',
    'recent'                     => 'Recent',
    'favorites'                  => 'Favorites',
    'upload'                     => 'Upload',
    'create_folder'              => 'Create folder',
    'refresh'                    => 'Refresh',
    'empty_trash'                => 'Empty trash',
    'search_file_and_folder'     => 'Search in current folder',
    'sort'                       => 'Sort',
    'file_name_asc'              => 'File name - ASC',
    'file_name_desc'             => 'File name - DESC',
    'uploaded_date_asc'          => 'Uploaded date - ASC',
    'uploaded_date_desc'         => 'Uploaded date - DESC',
    'size_asc'                   => 'Size - ASC',
    'size_desc'                  => 'Size - DESC',
    'actions'                    => 'Actions',
    'nothing_is_selected'        => 'Nothing is selected',
    'insert'                     => 'Insert',
    'folder_name'                => 'Folder name',
    'create'                     => 'Create',
    'rename'                     => 'Rename',
    'close'                      => 'Close',
    'save_changes'               => 'Save changes',
    'move_to_trash'              => 'Move items to trash',
    'confirm_trash'              => 'Are you sure you want to move these items to trash?',
    'confirm'                    => 'Confirm',
    'confirm_delete'             => 'Delete item(s)',
    'confirm_delete_description' => 'Your request cannot rollback. Are you sure you wanna delete these items?',
    'empty_trash_title'          => 'Empty trash',
    'empty_trash_description'    => 'Your request cannot rollback. Are you sure you wanna remove all items in trash?',
    'up_level'                   => 'Up one level',
    'upload_progress'            => 'Upload progress',

    'folder_created' => 'Folder is created successfully!',
    'gallery'        => 'Media gallery',

    'trash_error'                   => 'Error when delete selected item(s)',
    'trash_success'                 => 'Moved selected item(s) to trash successfully!',
    'restore_error'                 => 'Error when restore selected item(s)',
    'restore_success'               => 'Restore selected item(s) successfully!',
    'copy_success'                  => 'Copied selected item(s) successfully!',
    'delete_success'                => 'Deleted selected item(s) successfully!',
    'favorite_success'              => 'Favorite selected item(s) successfully!',
    'remove_favorite_success'       => 'Remove selected item(s) from favorites successfully!',
    'rename_error'                  => 'Error when rename item(s)',
    'rename_success'                => 'Rename selected item(s) successfully!',
    'empty_trash_success'           => 'Empty trash successfully!',
    'invalid_action'                => 'Invalid action!',
    'file_not_exists'               => 'File is not exists!',
    'download_file_error'           => 'Error when downloading files!',
    'missing_zip_archive_extension' => 'Please enable ZipArchive extension to download file!',
    'can_not_download_file'         => 'Can not download this file!',
    'invalid_request'               => 'Invalid request!',
    'add_success'                   => 'Add item successfully!',
    'file_too_big'                  => 'File too big. Max file upload is :size bytes',
    'can_not_detect_file_type'      => 'File type is not allowed or can not detect file type!',
    'upload_failed'                 => 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors',

    'menu_name' => 'Media',
    'add'       => 'Add media',

    'javascript'   => [
        'name'             => 'Name',
        'url'              => 'URL',
        'full_url'         => 'Full URL',
        'size'             => 'Size',
        'mime_type'        => 'Type',
        'created_at'       => 'Uploaded at',
        'updated_at'       => 'Modified at',
        'nothing_selected' => 'Nothing is selected',
        'visit_link'       => 'Open link',

        'no_item' => [
            'all_media' => [
                'icon'    => 'fas fa-cloud-upload-alt',
                'title'   => 'Drop files and folders here',
                'message' => 'Or use the upload button above',
            ],
            'trash'     => [
                'icon'    => 'fas fa-trash-alt',
                'title'   => 'There is nothing in your trash currently',
                'message' => 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently',
            ],
            'favorites' => [
                'icon'    => 'fas fa-star',
                'title'   => 'You have not added anything to your favorites yet',
                'message' => 'Add files to favorites to easily find them later',
            ],
            'recent'    => [
                'icon'    => 'far fa-clock',
                'title'   => 'You did not opened anything yet',
                'message' => 'All recent files that you opened will be appeared here',
            ],
            'default'   => [
                'icon'    => 'fas fa-sync',
                'title'   => 'No items',
                'message' => 'This directory has no item',
            ],
        ],

        'clipboard' => [
            'success' => 'These file links has been copied to clipboard',
        ],

        'message' => [
            'error_header'   => 'Error',
            'success_header' => 'Success',
        ],

        'download' => [
            'error' => 'No files selected or cannot download these files',
        ],

        'actions_list' => [
            'basic' => [
                'preview' => 'Preview',
            ],
            'file'  => [
                'copy_link' => 'Copy link',
                'rename'    => 'Rename',
                'make_copy' => 'Make a copy',
            ],
            'user'  => [
                'favorite'        => 'Add to favorite',
                'remove_favorite' => 'Remove favorite',
            ],
            'other' => [
                'download' => 'Download',
                'trash'    => 'Move to trash',
                'delete'   => 'Delete permanently',
                'restore'  => 'Restore',
            ],
        ],
    ],
    'name_invalid' => 'The folder name has invalid character(s).',
    'url_invalid'  => 'Please provide a valid URL',
    'path_invalid' => 'Please provide a valid path',
    'download_link'=> 'Download',
    'url'          => 'URL',
    'download_explain' => 'Enter one URL per line.',
    'downloading'      => 'Downloading...',
];
