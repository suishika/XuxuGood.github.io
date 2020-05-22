<div class="reward-container">
  <div>{{ page.reward_settings.comment }}</div>
  <button data-toggle="modal" data-target="#myModal">
    {{ __('reward.donate') }}
  </button>
</div>
<style>
  .modal-open {
      overflow: hidden;
  }

  .modal {
      position: fixed;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      z-index: 9999;
      display: none;
      overflow: hidden;
      -webkit-overflow-scrolling: touch;
      outline: 0;
  }

  .modal.fade .modal-dialog {
      -webkit-transition: -webkit-transform .3s ease-out;
      -o-transition: -o-transform .3s ease-out;
      transition: transform .3s ease-out;
      -webkit-transform: translate(0, -25%);
      -ms-transform: translate(0, -25%);
      -o-transform: translate(0, -25%);
      transform: translate(0, -25%);
  }

  .modal.in .modal-dialog {
      -webkit-transform: translate(0, 0);
      -ms-transform: translate(0, 0);
      -o-transform: translate(0, 0);
      transform: translate(0, 0);
  }

  .modal-open .modal {
      overflow-x: hidden;
      overflow-y: auto;
  }

  .modal-dialog {
      position: relative;
      width: auto;
      margin: 10px;
  }

  .modal-content {
      z-index: 9999;
      position: relative;
      background-color: #fff;
      -webkit-background-clip: padding-box;
      background-clip: padding-box;
      border: 1px solid #999;
      border: 1px solid rgba(0, 0, 0, .2);
      border-radius: 6px;
      outline: 0;
      -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
      box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
  }

  .modal-backdrop {
      position: fixed;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      z-index: 0;
      background-color: #000;
  }

  .modal-backdrop.fade {
      filter: alpha(opacity=0);
      opacity: 0;
  }

  .modal-backdrop.in {
      filter: alpha(opacity=50);
      opacity: .5 !important;
  }

  .modal-header {
      padding: 15px;
      border-bottom: 1px solid #e5e5e5;
  }

  .modal-header .close {
      margin-top: 3px;
  }

  .modal-title {
      font-size: 15px;
      margin: 0;
      line-height: 1.42857143;
  }

  .modal-body {
      position: relative;
      padding: 15px;
  }

  .modal-footer {
      padding: 15px;
      text-align: right;
      border-top: 1px solid #e5e5e5;
  }

  .modal-footer .bootstrap-btn + .bootstrap-btn {
      margin-bottom: 0;
      margin-left: 5px;
  }

  .modal-scrollbar-measure {
      position: absolute;
      top: -9999px;
      width: 50px;
      height: 50px;
      overflow: scroll;
  }

  @media (min-width: 768px) {
      .modal-dialog {
          width: 600px;
          margin: 30px auto;
      }

      .modal-content {
          -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
          box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
      }

      .modal-sm {
          width: 300px;
      }
  }

  @media (min-width: 992px) {
      .modal-lg {
          width: 900px;
      }
  }

  .fade {
      opacity: 0;
      -webkit-transition: opacity .15s linear;
      -o-transition: opacity .15s linear;
      transition: opacity .15s linear;
  }

  .fade.in {
      opacity: 1;
  }

  .text-center {
      text-align: center;
  }

  .tab-contents > .tab-pane {
      display: none;
  }

  .tab-contents > .active {
      display: block;
  }

  .bootstrap-btn {
      display: inline-block;
      padding: 6px 12px;
      margin-bottom: 0;
      font-size: 14px;
      font-weight: normal;
      line-height: 1.42857143;
      text-align: center;
      white-space: nowrap;
      vertical-align: middle;
      -ms-touch-action: manipulation;
      touch-action: manipulation;
      cursor: url(/images/ayuda.cur), auto !important;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
      background-image: none;
      border: 1px solid transparent;
      border-radius: 4px;
  }

  .bootstrap-btn:focus,
  .bootstrap-btn:active:focus,
  .bootstrap-btn.active:focus,
  .bootstrap-btn.focus,
  .bootstrap-btn:active.focus,
  .bootstrap-btn.active.focus {
      outline: 5px auto -webkit-focus-ring-color;
      outline-offset: -2px;
  }

  .bootstrap-btn:hover,
  .bootstrap-btn:focus,
  .bootstrap-btn.focus {
      color: #333;
      text-decoration: none;
  }

  .bootstrap-btn-success {
      color: #fff;
      background-color: #5cb85c;
      border-color: #4cae4c;
  }

  .bootstrap-btn-success:focus,
  .bootstrap-btn-success.focus {
      color: #fff;
      background-color: #449d44;
      border-color: #255625;
  }

  .bootstrap-btn-success:hover {
      color: #fff;
      background-color: #449d44;
      border-color: #398439;
  }

  .bootstrap-btn-success:active,
  .bootstrap-btn-success.active,
  .open > .dropdown-toggle.bootstrap-btn-success {
      color: #fff;
      background-color: #449d44;
      border-color: #398439;
  }

  .bootstrap-btn-success:active:hover,
  .bootstrap-btn-success.active:hover,
  .open > .dropdown-toggle.bootstrap-btn-success:hover,
  .bootstrap-btn-success:active:focus,
  .bootstrap-btn-success.active:focus,
  .open > .dropdown-toggle.bootstrap-btn-success:focus,
  .bootstrap-btn-success:active.focus,
  .bootstrap-btn-success.active.focus,
  .open > .dropdown-toggle.bootstrap-btn-success.focus {
      color: #fff;
      background-color: #398439;
      border-color: #255625;
  }

  .bootstrap-btn-success:active,
  .bootstrap-btn-success.active,
  .open > .dropdown-toggle.bootstrap-btn-success {
      background-image: none;
  }

  .bootstrap-btn-success.disabled:hover,
  .bootstrap-btn-success[disabled]:hover,
  fieldset[disabled] .bootstrap-btn-success:hover,
  .bootstrap-btn-success.disabled:focus,
  .bootstrap-btn-success[disabled]:focus,
  fieldset[disabled] .bootstrap-btn-success:focus,
  .bootstrap-btn-success.disabled.focus,
  .bootstrap-btn-success[disabled].focus,
  fieldset[disabled] .bootstrap-btn-success.focus {
      background-color: #5cb85c;
      border-color: #4cae4c;
  }

  .bootstrap-btn-success .badge {
      color: #5cb85c;
      background-color: #fff;
  }

  .bootstrap-btn-info {
      color: #fff;
      background-color: #5bc0de;
      border-color: #46b8da;
  }

  .bootstrap-btn-info:focus,
  .bootstrap-btn-info.focus {
      color: #fff;
      background-color: #31b0d5;
      border-color: #1b6d85;
  }

  .bootstrap-btn-info:hover {
      color: #fff;
      background-color: #31b0d5;
      border-color: #269abc;
  }

  .bootstrap-btn-info:active,
  .bootstrap-btn-info.active,
  .open > .dropdown-toggle.bootstrap-btn-info {
      color: #fff;
      background-color: #31b0d5;
      border-color: #269abc;
  }

  .bootstrap-btn-info:active:hover,
  .bootstrap-btn-info.active:hover,
  .open > .dropdown-toggle.bootstrap-btn-info:hover,
  .bootstrap-btn-info:active:focus,
  .bootstrap-btn-info.active:focus,
  .open > .dropdown-toggle.bootstrap-btn-info:focus,
  .bootstrap-btn-info:active.focus,
  .bootstrap-btn-info.active.focus,
  .open > .dropdown-toggle.bootstrap-btn-info.focus {
      color: #fff;
      background-color: #269abc;
      border-color: #1b6d85;
  }

  .bootstrap-btn-info:active,
  .bootstrap-btn-info.active,
  .open > .dropdown-toggle.bootstrap-btn-info {
      background-image: none;
  }

  .bootstrap-btn-info.disabled:hover,
  .bootstrap-btn-info[disabled]:hover,
  fieldset[disabled] .bootstrap-btn-info:hover,
  .bootstrap-btn-info.disabled:focus,
  .bootstrap-btn-info[disabled]:focus,
  fieldset[disabled] .bootstrap-btn-info:focus,
  .bootstrap-btn-info.disabled.focus,
  .bootstrap-btn-info[disabled].focus,
  fieldset[disabled] .bootstrap-btn-info.focus {
      background-color: #5bc0de;
      border-color: #46b8da;
  }

  .bootstrap-btn-info .badge {
      color: #5bc0de;
      background-color: #fff;
  }

  .sr-only {
      position: absolute;
      width: 1px;
      height: 1px;
      padding: 0;
      margin: -1px;
      overflow: hidden;
      clip: rect(0, 0, 0, 0);
      border: 0;
  }

  .sr-only-focusable:active,
  .sr-only-focusable:focus {
      position: static;
      width: auto;
      height: auto;
      margin: 0;
      overflow: visible;
      clip: auto;
  }

  button.close:focus {
      outline: 0;
  }

  button.close {
      -webkit-appearance: none;
      padding: 0;
      cursor: url(/images/ayuda.cur), auto !important;
      background: 0 0;
      border: 0;
  }

  .close {
      float: right;
      font-weight: 700;
      line-height: 1;
      color: #000;
      text-shadow: 0 1px 0 #fff;
      filter: alpha(opacity=20);
      opacity: .2;
  }

  .close:hover,
  .close:focus {
      color: #000;
      text-decoration: none;
      cursor: url(/images/ayuda.cur), auto !important;
      filter: alpha(opacity=50);
      opacity: 1;
  }

  .article__reward {
      margin: 0 !important;
  }

  #myModal .tab-content > .active {
      display: block !important;
  }

  .pay-img {
      max-width: 70% !important;
      border: none !important;
      margin: 10px auto;
  }

  .article__reward-border {
      border-top: 1px solid #eee;
      margin-bottom: 20px !important;
      margin-top: 10px !important;
  }

  .bootstrap-btn-info {
      color: #fff !important;
      background-color: #23b7e5;
      border-color: #23b7e5;
  }

  .bootstrap-btn-success {
      color: #fff !important;
      background-color: #27c24c;
      border-color: #27c24c;
  }

  .pay-button {
      display: inline-block;
  }

  .bootstrap-btn-success:focus, .bootstrap-btn-success:hover {
      color: #fff !important;
      background-color: #23ad44;
      border-color: #20a03f;
      outline: none !important;
  }

  .bootstrap-btn-info:focus, .bootstrap-btn-info:hover {
      color: #fff !important;
      background-color: #19a9d5;
      border-color: #189ec8;
      outline: none !important;
  }
</style>
