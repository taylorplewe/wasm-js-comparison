const NUM_TO_COUNT_TO = 9999999999;
const NUM_TO_COUNT_TO2 = 99999999;
const NUM_TO_COUNT_TO3 = 99999999;
let countInWA;
let countInWA2;
let countInWA3;

window.onload = () => {
	document.getElementById('numToLoad').innerText = NUM_TO_COUNT_TO.toLocaleString();
	document.getElementById('numCode1').innerText = NUM_TO_COUNT_TO;
	document.getElementById('numToIterate').innerText = NUM_TO_COUNT_TO2.toLocaleString();
	document.getElementById('numCode2').innerText = NUM_TO_COUNT_TO2;
	document.getElementById('descrNum3').innerText = NUM_TO_COUNT_TO3.toLocaleString();
	document.getElementById('numCode3').innerText = NUM_TO_COUNT_TO3;
	document.getElementById('numCode4').innerText = NUM_TO_COUNT_TO3;
	WebAssembly.instantiateStreaming(fetch('main.wasm')).then(obj => {
		countInWA = obj.instance.exports.count;
	});
	WebAssembly.instantiateStreaming(fetch('func2.wasm')).then(obj => {
		countInWA2 = obj.instance.exports.c;
	});
	WebAssembly.instantiateStreaming(fetch('func3.wasm')).then(obj => {
		countInWA3 = obj.instance.exports.c;
	});
};

async function onClickJS1() {
	const starttime = new Date();
	document.getElementById('jsStart').style = "visibility: hidden;";
	document.getElementById('jsDone').style = "visibility: hidden;";
	await waitHalfSec();
	document.getElementById('jsStart').style = "visibility: visible;";
	await waitShort();
	await countInJS();
	document.getElementById('jsDone').style = "visibility: visible;";
	const endtime = new Date();
	document.getElementById('jsTime').innerText = (endtime - starttime) / 1000;
}

async function countInJS() {
	return new Promise((resolve, reject) => {
		for (let i = 0; i < NUM_TO_COUNT_TO; i++) { }
		resolve();
	});
}

async function onClickWA1() {
	let starttime = new Date();
	document.getElementById('waStart').style = "visibility: hidden;";
	document.getElementById('waDone').style = "visibility: hidden;";
	await waitHalfSec();
	document.getElementById('waStart').style = "visibility: visible;";
	await waitShort();
	countInWA();
	document.getElementById('waDone').style = "visibility: visible;";
	let endtime = new Date();
	document.getElementById('waTime').innerText = (endtime - starttime) / 1000;
}

async function onClickJS2() {
	const starttime = new Date();
	document.getElementById('js2Start').style = "visibility: hidden;";
	document.getElementById('js2Done').style = "visibility: hidden;";
	await waitHalfSec();
	document.getElementById('js2Start').style = "visibility: visible;";
	await waitShort();
	countInJS2();
	document.getElementById('js2Done').style = "visibility: visible;";
	const endtime = new Date();
	document.getElementById('js2Time').innerText = (endtime - starttime) / 1000;
}

function countInJS2() {
	let num1 = document.getElementById('num1').value;
	let num2 = document.getElementById('num2').value;
	const add = document.getElementById('addRadio').checked;

	for (let i = 0; i < NUM_TO_COUNT_TO2; i++) {
		if (add)
			num1 += num2;
		else
			num1 -= num2;
	};
}

async function onClickWA2() {
	let starttime = new Date();
	document.getElementById('wa2Start').style = "visibility: hidden;";
	document.getElementById('wa2Done').style = "visibility: hidden;";
	await waitHalfSec();
	document.getElementById('wa2Start').style = "visibility: visible;";
	await waitShort();
	countInWA2();
	document.getElementById('wa2Done').style = "visibility: visible;";
	let endtime = new Date();
	document.getElementById('wa2Time').innerText = (endtime - starttime) / 1000;
}

async function onClickJS3() {
	const starttime = new Date();
	document.getElementById('js3Start').style = "visibility: hidden;";
	document.getElementById('js3Done').style = "visibility: hidden;";
	document.getElementById('js3ans-label').style = "visibility: hidden;";
	await waitHalfSec();
	document.getElementById('js3Start').style = "visibility: visible;";
	await waitShort();
	const res = jsFunc3();
	document.getElementById('js3Done').style = "visibility: visible;";
	document.getElementById('js3ans-label').style = "visibility: visible;";
	const endtime = new Date();
	document.getElementById('js3Time').innerText = (endtime - starttime) / 1000;
}

function jsFunc3() {
	let num1 = document.getElementById('convNum').value;
	let num2 = num1;

	for (let i = 0; i < NUM_TO_COUNT_TO3; i++) {
		if (i % 7 === 0)
			num1 += Math.floor(i / 3);
		else if ((i + Math.floor(num2)) % 2 === 0)
			num1 /= 2;
		else if (i % 10 === 0)
			num2 *= 2;
		else
			num1++;
	}

	document.getElementById('js3ans').innerText = num1;
}

async function onClickWA3() {
	let starttime = new Date();
	document.getElementById('wa3Start').style = "visibility: hidden;";
	document.getElementById('wa3Done').style = "visibility: hidden;";
	document.getElementById('wa3ans-label').style = "visibility: hidden;";
	await waitHalfSec();
	document.getElementById('wa3Start').style = "visibility: visible;";
	await waitShort();
	let num = document.getElementById('convNum').value;
	const res = countInWA3(num);
	document.getElementById('wa3ans').innerText = res;
	document.getElementById('wa3Done').style = "visibility: visible;";
	document.getElementById('wa3ans-label').style = "visibility: visible;";
	let endtime = new Date();
	document.getElementById('wa3Time').innerText = (endtime - starttime) / 1000;
}

async function waitShort() {
	// clearTimeout();
	return new Promise((resolve, reject) => {
		setTimeout(() => { resolve(); }, 100);
	})
}

async function waitHalfSec() {
	return new Promise((resolve, reject) => {
		setTimeout(() => { resolve() }, 500)
	});
}