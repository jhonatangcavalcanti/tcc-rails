function onTurboLinkLoad(){
	var collapsibleElems = document.querySelectorAll('.collapsible.expandable');
	if (collapsibleElems) {
		var collapsibleInstances = M.Collapsible.init(collapsibleElems, {
			accordion: false
		});
	}

	var sidenavElem = document.querySelector('.sidenav');
	if (sidenavElem) {
		var currentInstances = M.Sidenav.getInstance(sidenavElem);
		currentInstances && currentInstances.destroy()

		var sidenavInstances = M.Sidenav.init(sidenavElem, {
			edge: 'left'
		});
	}

	var elem = document.querySelector('.modal');
	var instance = M.Modal.init(elem, {
		startingTop: '0%',
		endingTop: '0%',
		onOpenEnd: onModalOpenEnd,
		onCloseStart: onModalCloseStart,
	});
}

function onBeforeTurboLinkCache() {
	var collapsibleElems = document.querySelectorAll('.collapsible.expandable');
	if (collapsibleElems) {
		Array.prototype.forEach.call(collapsibleElems, (el) => {
			var collapsibleInstance = M.Collapsible.getInstance(el)
			collapsibleInstance && collapsibleInstance.destroy()
		})
	}

	var sidenavElem = document.querySelector('.sidenav');
	if (sidenavElem) {
		var instance = M.Sidenav.getInstance(sidenavElem);
		instance && instance.destroy()
	}

	var modalElem = document.querySelector('.modal');
	if (modalElem) {
		var instances = M.Modal.getInstance(modalElem);
		instances && instances.destroy()
	}
}

function onModalOpenEnd() {
	var stuffRadioInputEnable = document.querySelector('.radio-input-field-container input[type="radio"][value="enabled"]')
	var stuffRadioInputDisable = document.querySelector('.radio-input-field-container input[type="radio"][value="disabled"]')

	stuffRadioInputEnable.addEventListener('change', onStuffRadioInputEnableChange)
	stuffRadioInputDisable.addEventListener('change', onStuffRadioInputDisableChange)
}

function onModalCloseStart() {
	var stuffRadioInputEnable = document.querySelector('.radio-input-field-container input[type="radio"][value="enabled"]')
	var stuffRadioInputDisable = document.querySelector('.radio-input-field-container input[type="radio"][value="disabled"]')

	stuffRadioInputEnable.removeEventListener('change', onStuffRadioInputDisableChange)
	stuffRadioInputDisable.removeEventListener('change', onStuffRadioInputDisableChange)
}

function onStuffRadioInputEnableChange() {
	var stuffInput = document.querySelector('.radio-input-field-container .input-field input')
	stuffInput.disabled = false
}

function onStuffRadioInputDisableChange() {
	var stuffInput = document.querySelector('.radio-input-field-container .input-field input')
	stuffInput.disabled = true
	stuffInput.value = ''
}

document.addEventListener('turbolinks:load', onTurboLinkLoad)
document.addEventListener('turbolinks:before-cache', onBeforeTurboLinkCache)
