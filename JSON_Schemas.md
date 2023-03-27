Article
-------
{
    "$schema": "https://json-schema.org/draft/2019-09/schema",
    "$id": "http://example.com/example.json",
    "type": "object",
    "default": {},
    "title": "Root Schema",
    "required": [
        "data"
    ],
    "properties": {
        "data": {
            "type": "object",
            "default": {},
            "title": "The data Schema",
            "required": [
                "article"
            ],
            "properties": {
                "article": {
                    "type": "object",
                    "default": {},
                    "title": "The article Schema",
                    "required": [
                        "name",
                        "status",
                        "image_link",
                        "alt_image",
                        "type",
                        "age_group",
                        "color",
                        "gender",
                        "condition",
                        "description",
                        "price",
                        "created_at",
                        "updated_at",
                        "user"
                    ],
                    "properties": {
                        "name": {
                            "type": "string",
                            "default": "",
                            "title": "The name Schema",
                            "examples": [
                                "stringy mcstring"
                            ]
                        },
                        "status": {
                            "type": "string",
                            "default": "",
                            "title": "The status Schema",
                            "examples": [
                                "available"
                            ]
                        },
                        "image_link": {
                            "type": "string",
                            "default": "",
                            "title": "The image_link Schema",
                            "examples": [
                                "http://img_55646464561.jpg"
                            ]
                        },
                        "alt_image": {
                            "type": "string",
                            "default": "",
                            "title": "The alt_image Schema",
                            "examples": [
                                "This is an image"
                            ]
                        },
                        "type": {
                            "type": "string",
                            "default": "",
                            "title": "The type Schema",
                            "examples": [
                                "pants"
                            ]
                        },
                        "age_group": {
                            "type": "string",
                            "default": "",
                            "title": "The age_group Schema",
                            "examples": [
                                "baby"
                            ]
                        },
                        "color": {
                            "type": "string",
                            "default": "",
                            "title": "The color Schema",
                            "examples": [
                                "neon orange"
                            ]
                        },
                        "gender": {
                            "type": "string",
                            "default": "",
                            "title": "The gender Schema",
                            "examples": [
                                "m-f"
                            ]
                        },
                        "condition": {
                            "type": "string",
                            "default": "",
                            "title": "The condition Schema",
                            "examples": [
                                "perfect"
                            ]
                        },
                        "description": {
                            "type": "string",
                            "default": "",
                            "title": "The description Schema",
                            "examples": [
                                "blindingly bright"
                            ]
                        },
                        "price": {
                            "type": "string",
                            "default": "",
                            "title": "The price Schema",
                            "examples": [
                                "5"
                            ]
                        },
                        "created_at": {
                            "type": "string",
                            "default": "",
                            "title": "The created_at Schema",
                            "examples": [
                                "June 10, 2023"
                            ]
                        },
                        "updated_at": {
                            "type": "string",
                            "default": "",
                            "title": "The updated_at Schema",
                            "examples": [
                                "June 10, 2023"
                            ]
                        },
                        "user": {
                            "type": "object",
                            "default": {},
                            "title": "The user Schema",
                            "required": [
                                "id",
                                "name"
                            ],
                            "properties": {
                                "id": {
                                    "type": "string",
                                    "default": "",
                                    "title": "The id Schema",
                                    "examples": [
                                        "646464645641"
                                    ]
                                },
                                "name": {
                                    "type": "string",
                                    "default": "",
                                    "title": "The name Schema",
                                    "examples": [
                                        "Betty Sue Suggins"
                                    ]
                                }
                            },
                            "examples": [{
                                "id": "646464645641",
                                "name": "Betty Sue Suggins"
                            }]
                        }
                    },
                    "examples": [{
                        "name": "stringy mcstring",
                        "status": "available",
                        "image_link": "http://img_55646464561.jpg",
                        "alt_image": "This is an image",
                        "type": "pants",
                        "age_group": "baby",
                        "color": "neon orange",
                        "gender": "m-f",
                        "condition": "perfect",
                        "description": "blindingly bright",
                        "price": "5",
                        "created_at": "June 10, 2023",
                        "updated_at": "June 10, 2023",
                        "user": {
                            "id": "646464645641",
                            "name": "Betty Sue Suggins"
                        }
                    }]
                }
            },
            "examples": [{
                "article": {
                    "name": "stringy mcstring",
                    "status": "available",
                    "image_link": "http://img_55646464561.jpg",
                    "alt_image": "This is an image",
                    "type": "pants",
                    "age_group": "baby",
                    "color": "neon orange",
                    "gender": "m-f",
                    "condition": "perfect",
                    "description": "blindingly bright",
                    "price": "5",
                    "created_at": "June 10, 2023",
                    "updated_at": "June 10, 2023",
                    "user": {
                        "id": "646464645641",
                        "name": "Betty Sue Suggins"
                    }
                }
            }]
        }
    },
    "examples": [{
        "data": {
            "article": {
                "name": "stringy mcstring",
                "status": "available",
                "image_link": "http://img_55646464561.jpg",
                "alt_image": "This is an image",
                "type": "pants",
                "age_group": "baby",
                "color": "neon orange",
                "gender": "m-f",
                "condition": "perfect",
                "description": "blindingly bright",
                "price": "5",
                "created_at": "June 10, 2023",
                "updated_at": "June 10, 2023",
                "user": {
                    "id": "646464645641",
                    "name": "Betty Sue Suggins"
                }
            }
        }
    }]
}

User
----
{
    "$schema": "https://json-schema.org/draft/2019-09/schema",
    "$id": "http://example.com/example.json",
    "type": "object",
    "default": {},
    "title": "Root Schema",
    "required": [
        "user"
    ],
    "properties": {
        "user": {
            "type": "object",
            "default": {},
            "title": "The user Schema",
            "required": [
                "id",
                "name"
            ],
            "properties": {
                "id": {
                    "type": "string",
                    "default": "",
                    "title": "The id Schema",
                    "examples": [
                        "646464645641"
                    ]
                },
                "name": {
                    "type": "string",
                    "default": "",
                    "title": "The name Schema",
                    "examples": [
                        "Betty Sue Suggins"
                    ]
                }
            },
            "examples": [{
                "id": "646464645641",
                "name": "Betty Sue Suggins"
            }]
        }
    },
    "examples": [{
        "user": {
            "id": "646464645641",
            "name": "Betty Sue Suggins"
        }
    }]
}