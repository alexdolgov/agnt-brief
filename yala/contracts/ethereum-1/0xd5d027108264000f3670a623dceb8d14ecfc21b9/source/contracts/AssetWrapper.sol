// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract AssetWrapper is ERC20, AccessControl {
	using SafeERC20 for IERC20;

	bytes32 public constant INSTITUTION = keccak256("INSTITUTION");
	bytes32 public constant WHITELIST = keccak256("WHITELIST");

	IERC20Metadata public immutable assets;

	address public curReceiver;

	enum ReceiptStatus {
		Created,
		Minted,
		Withdrawn
	}

	struct Receipt {
		uint256 amount;
		uint256 deadline;
		ReceiptStatus status;
	}

	mapping(address => Receipt) public receipts;

	event ReceiptUpdated(address indexed receiver, Receipt receipt);
	event Withdrawn(address indexed to, uint256 amount);

	constructor(address _admin, IERC20Metadata _assets, string memory _name, string memory _symbol) ERC20(_name, _symbol) {
		_grantRole(DEFAULT_ADMIN_ROLE, _admin);
		assets = _assets;
	}

	modifier nonZeroAddress(address addr) {
		require(addr != address(0), "AssetWrapper: zero address");
		_;
	}

	function createReceipt(address _receiver, uint256 _deadline) external onlyRole(DEFAULT_ADMIN_ROLE) {
		_createReceipt(_receiver, _deadline);
	}

	function mint(uint256 amount) external onlyRole(INSTITUTION) nonZeroAddress(curReceiver) {
		require(receipts[curReceiver].deadline > 0, "AssetWrapper: receipt not exists");
		require(receipts[curReceiver].status == ReceiptStatus.Created, "AssetWrapper: receipt is not created status");
		IERC20(assets).safeTransferFrom(msg.sender, address(this), amount);
		_mint(curReceiver, amount);
		receipts[curReceiver].amount = amount;
		receipts[curReceiver].status = ReceiptStatus.Minted;
		emit ReceiptUpdated(curReceiver, receipts[curReceiver]);
	}

	function burn(uint256 amount) external {
		_burn(msg.sender, amount);
	}

	function decimals() public view override returns (uint8) {
		return assets.decimals();
	}

	function withdraw(address _receiver) external {
		require(receipts[_receiver].status == ReceiptStatus.Minted, "AssetWrapper: receipt is minted status");
		if (!isDeadline(_receiver)) {
			require(hasRole(WHITELIST, msg.sender), "AssetWrapper: caller is not whitelisted");
		} else {
			require(hasRole(INSTITUTION, msg.sender), "AssetWrapper: caller is not an institution");
		}
		uint256 amount = receipts[_receiver].amount;
		require(amount > 0, "AssetWrapper: no amount");
		IERC20(assets).safeTransfer(msg.sender, amount);
		receipts[_receiver].status == ReceiptStatus.Withdrawn;
		emit ReceiptUpdated(_receiver, receipts[_receiver]);
		emit Withdrawn(msg.sender, amount);
	}

	function _createReceipt(address _receiver, uint256 _deadline) internal nonZeroAddress(_receiver) {
		require(receipts[_receiver].deadline == 0, "AssetWrapper: receipt exists");
		receipts[_receiver] = Receipt({ deadline: _deadline, amount: 0, status: ReceiptStatus.Created });
		curReceiver = _receiver;
		emit ReceiptUpdated(_receiver, receipts[_receiver]);
	}

	function isDeadline(address _receiver) public view returns (bool) {
		return block.timestamp > receipts[_receiver].deadline;
	}
}
