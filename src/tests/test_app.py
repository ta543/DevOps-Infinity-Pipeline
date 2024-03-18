import pytest
from main import app

@pytest.fixture
def client():
    app.config['TESTING'] = True
    with app.test_client() as client:
        yield client

def test_home_page(client):
    """Test the home page route."""
    rv = client.get('/')
    assert b'Hello, World!' in rv.data
