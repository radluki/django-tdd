function exitIfFail {
    if (! $?)
    {
        echo "FAILURE"
        exit
    }
}

python manage.py test
exitIfFail

flake8
exitIfFail

docker-compose run --rm app sh -c "python manage.py test && flake8"