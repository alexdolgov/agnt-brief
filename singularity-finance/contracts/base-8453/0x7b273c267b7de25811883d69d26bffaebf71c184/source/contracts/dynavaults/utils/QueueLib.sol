// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

library QueueLib {
	address private constant ZERO_ADDRESS = address(0);

	struct AddressQueue {
		uint8 size;
		address[] queue;
	}

	error IsInQueue();
	error QueueFull();

	function initSize(AddressQueue storage queue, uint8 queueSize) external {
		queue.size = queueSize;
		queue.queue = new address[](queueSize);
	}

	function reorganize(AddressQueue storage queue) private {
		// Reorganize `Queue` based on premise that if there is an
		// empty value between two actual values, then the empty value should be
		// replaced by the later value.
		// NOTE: Relative ordering of non-zero values is maintained.
		uint256 offset = 0;
		for (uint256 idx = 0; idx < queue.size; idx++) {
			address _address = queue.queue[idx];
			if (_address == ZERO_ADDRESS) {
				offset += 1; // how many values we need to shift, always `<= idx`
			} else if (offset != 0) {
				queue.queue[idx - offset] = _address;
				queue.queue[idx] = ZERO_ADDRESS;
			}
		}
	}

	function add(AddressQueue storage queue, address _address) external {
		uint256 last_idx = 0;
		for (uint256 s = 0; s < queue.size; s++) {
			address member = queue.queue[s];
			if (member == ZERO_ADDRESS) break;
			if (member == _address) {
				revert IsInQueue();
			}
			last_idx += 1;
		}
		// Check if queue is full
		if (last_idx >= queue.size) {
			revert QueueFull();
		}
		// Add address to the end of the queue
		queue.queue[queue.size - 1] = _address;
		reorganize(queue);
	}

	function replace(AddressQueue storage queue, address oldVersion, address newVersion) external {
		// replace oldVersion address with newVersion address in queue
		for (uint256 idx = 0; idx < queue.size; idx++) {
			if (oldVersion == queue.queue[idx]) {
				queue.queue[idx] = newVersion;
				break;
			}
		}
	}

	function remove(AddressQueue storage queue, address _address) external {
		for (uint256 idx = 0; idx < queue.size; idx++) {
			if (queue.queue[idx] == _address) {
				queue.queue[idx] = ZERO_ADDRESS;
				break;
			}
		}
		reorganize(queue);
	}
}
