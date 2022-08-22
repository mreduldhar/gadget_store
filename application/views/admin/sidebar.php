
  <aside class="main-sidebar">
    <section class="sidebar">
      <ul class="sidebar-menu" data-widget="tree">
        <li>
          <a href="<?=base_url()?>Admin_dashboard">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>

        <li class="treeview">
          <a href="#">
            <i class="fa fa-cog"></i>
            <span>Products</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?=base_url()?>Manage_products"><i class="fa fa-circle-o"></i>Manage Products</a></li>
            <li><a href="<?=base_url()?>Manage_products/add_product"><i class="fa fa-circle-o"></i> Add New Products</a></li>
          </ul>
        </li>
          
        <li class="treeview">
          <a href="#">
            <i class="fa fa-list"></i>
            <span>Categories</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?=base_url()?>Categories"><i class="fa fa-circle-o"></i> Manage Categories</a></li>
            <li><a href="<?=base_url()?>Categories/add_categories"><i class="fa fa-circle-o"></i> Add Category</a></li>
          </ul>
        </li>
          
        <li class="treeview">
          <a href="#">
            <i class="fa fa-shopping-cart"></i>
            <span>Orders</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?=base_url()?>Order/pending_orders"><i class="fa fa-circle-o"></i>Pending Orders</a></li>
            <li><a href="<?=base_url()?>Order/delivered_orders"><i class="fa fa-circle-o"></i> Delivered Orders</a></li>
            <li><a href="<?=base_url()?>Order/cancelled_orders"><i class="fa fa-circle-o"></i> Cancelled Orders</a></li>
          </ul>
        </li> 
          
        <li class="treeview">
          <a href="#">
            <i class="fa fa-users"></i>
            <span>Users</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?=base_url()?>Users/index"><i class="fa fa-users"></i> Manage Users</a></li>
          </ul>
        </li>    
          
         <li class="treeview">
          <a href="#">
            <i class="fa fa-envelope"></i>
            <span>Messages</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?=base_url()?>Users/messages"><i class="fa fa-envelope"></i>User Messages</a></li>
          </ul>
        </li> 
          
    </section>
  </aside>
