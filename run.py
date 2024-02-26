from app import app
from flask import render_template, request, redirect, url_for
from app.models import Product 

from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def index():
    products = Product.get_all()
    return render_template('index.html', products=products)

@app.route('/delete/<int:id>', methods=['POST'])
def delete_product(id):
    Product.delete(id)
    return redirect(url_for('index'))

@app.route('/update/<int:id>', methods=['GET', 'POST'])
def update_product(id):
    if request.method == 'POST':
        Product(id=id,name=request.form['name'], description=request.form['description'], price=request.form['price']).save()
        return redirect(url_for('index'))
    
    product = Product.get_by_id(id=id)
    if product:
        return render_template('update_product.html', product=product)
    else:
        return 'Produto não encontrado', 404

@app.route('/add', methods=['GET', 'POST'])
def add_product():
    if request.method == 'POST':
        Product(name=request.form['name'], description=request.form['description'], price=request.form['price']).save()
        return redirect(url_for('index'))
    
    return render_template('add_product.html')

if __name__ == '__main__':
   app.run(port=8000, debug=True)