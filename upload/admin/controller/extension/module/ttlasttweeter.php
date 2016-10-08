<?php
class ControllerExtensionModuleTtlasttweeter extends Controller {
	private $error = array();

	public function install() {
        $this->load->model('setting/setting');

        $data = array(
			'ttlasttweeter_id' => 'plazathemes',
			'ttlasttweeter_status'   => 1,
			'ttlasttweeter_width'   => 200,
			'ttlasttweeter_height'   => 200
        );

		$this->model_setting_setting->editSetting('ttlasttweeter',$data,0);
    }

	public function index() {
        $this->load->language('extension/module/ttlasttweeter');

        $this->document->setTitle($this->language->get('page_title'));

        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->model_setting_setting->editSetting('ttlasttweeter', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true));
        }

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_ttlasttweeter_width'] = $this->language->get('text_ttlasttweeter_width');
		$data['text_ttlasttweeter_height'] = $this->language->get('text_ttlasttweeter_height');
		$data['text_ttlasttweeter_page'] = $this->language->get('text_ttlasttweeter_page');
		$data['text_ttlasttweeter_id'] = $this->language->get('text_ttlasttweeter_id');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_edit'] = $this->language->get('text_edit');

		$data['entry_status'] = $this->language->get('entry_status');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}
		
		if (isset($this->error['id'])) {
			$data['error_id'] = $this->error['id'];
		} else {
			$data['error_id'] = '';
		}
		
		if (isset($this->error['width'])) {
			$data['error_width'] = $this->error['width'];
		} else {
			$data['error_width'] = '';
		}
		
		if (isset($this->error['height'])) {
			$data['error_height'] = $this->error['height'];
		} else {
			$data['error_height'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true)
		);

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('extension/module/ttlasttweeter', 'token=' . $this->session->data['token'], true)
		);

		$data['action'] = $this->url->link('extension/module/ttlasttweeter', 'token=' . $this->session->data['token'], true);

		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);
		
		if (isset($this->request->post['ttlasttweeter_status'])) {
			$data['ttlasttweeter_status'] = $this->request->post['ttlasttweeter_status'];
		} elseif ($this->config->get('ttlasttweeter_status')) {
			$data['ttlasttweeter_status'] = $this->config->get('ttlasttweeter_status');
		}

		if (isset($this->request->post['ttlasttweeter_id'])) {
			$data['ttlasttweeter_id'] = $this->request->post['ttlasttweeter_id'];
		} elseif ($this->config->get('ttlasttweeter_id')) {
			$data['ttlasttweeter_id'] = $this->config->get('ttlasttweeter_id');
		}

		if (isset($this->request->post['ttlasttweeter_width'])) {
			$data['ttlasttweeter_width'] = $this->request->post['ttlasttweeter_width'];
		} elseif ($this->config->get('ttlasttweeter_width')) {
			$data['ttlasttweeter_width'] = $this->config->get('ttlasttweeter_width');
		}

		if (isset($this->request->post['ttlasttweeter_height'])) {
			$data['ttlasttweeter_height'] = $this->request->post['ttlasttweeter_height'];
		} elseif ($this->config->get('ttlasttweeter_height')) {
			$data['ttlasttweeter_height'] = $this->config->get('ttlasttweeter_height');
		}

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('extension/module/ttlasttweeter.tpl', $data));
	}

	public  function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/ttlasttweeter')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->request->post['ttlasttweeter_id']) {
			$this->error['id'] = $this->language->get('error_id');
		}
		
		if (!$this->request->post['ttlasttweeter_width']) {
			$this->error['width'] = $this->language->get('error_width');
		}
		
		if (!$this->request->post['ttlasttweeter_height']) {
			$this->error['height'] = $this->language->get('error_height');
		}

		return !$this->error;
	}
}

?>