function exitIfFail {
    if (! $?)
    {
        echo "FAILURE"
        exit
    }
}

docker-compose run --rm app sh -c "python manage.py test && flake8"