// Destroy existing preview if one exists
with (obj_preview) {
    instance_destroy();
}

// Create a new preview
instance_create_layer(0, 0, "Instances", obj_preview);
