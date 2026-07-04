// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "./DateTime.sol";

// THIS CONTRACT IS FOR TESTING PURPOSES ONLY
// DO NOT USE IN PRODUCTION (REMOVE TEST FUNCTIONS and OPEN getCurrentTimestamp FUNCTION BEFORE DEPLOYMENT)
contract Vesting is AccessControl {
	using SafeERC20 for IERC20;

	enum Category {
        PARTNERS,
        ADVISORS,
        TEAM,
        ECOSYSTEM,
        CAMELOTDAO
	}
	event Added(address indexed investor, address indexed caller, uint256 allocation);
	event Removed(
		address indexed investor,
		address indexed caller,
		uint256 allocation,
		Category category
	);
	event Withdrawn(address indexed investor, uint256 torchAmount, uint256 xTorchAmount);
	event RecoverToken(address indexed token, uint256 amount);

	uint256 public totalAllocatedAmount;
	uint256 public initialTimestamp;
	IERC20 public TORCH;
	IERC20 public xTORCH;
	address[] public investors;
	/// @dev Boolean variable that indicates whether the contract was initialized.
	bool public isInitialized = false;

    uint64 public activeInverstorsCount;

	mapping(Category => uint256) public totalAllotments;
	mapping(Category => CategoryDetail) public categoryDetails;
	mapping(address => Investor) public investorsInfo;

	struct Investor {
		bool exists;
		address torchWallet;
		address xTorchWallet;
		uint256 withdrawnTokens;
		uint256 tokensAllotment;
		Category category;
	}

	struct CategoryDetail {
		uint256 cliffDays;
		uint256 recurrence;
	}

	/// @dev Checks that the contract is initialized.
	modifier initialized() {
		require(isInitialized, "not initialized");
		_;
	}

	/// @dev Checks that the contract has not yet been initialized.
	modifier notInitialized() {
		require(!isInitialized, "initialized");
		_;
	}

	modifier onlyInvestor() {
		require(investorsInfo[msg.sender].exists, "Only investors allowed");
		_;
	}

	constructor(IERC20 _torch, IERC20 _xTorch, address _admin, address _adminBackup) {
        TORCH = _torch;
        xTORCH = _xTorch;

        categoryDetails[Category.PARTNERS] = CategoryDetail(183, 730); // 183 days cliff and 730 days vesting
        categoryDetails[Category.ADVISORS] = CategoryDetail(0, 1095); // 0 days cliff and 1095 days vesting
        categoryDetails[Category.TEAM] = CategoryDetail(123, 972); // 123 days cliff and 972 days vesting
        categoryDetails[Category.ECOSYSTEM] = CategoryDetail(0, 1095); // 0 days cliff and 1095 days vesting 
        categoryDetails[Category.CAMELOTDAO] = CategoryDetail(184, 396); // 184 days cliff and 396 days vesting


        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(DEFAULT_ADMIN_ROLE, _adminBackup);
	}

	/// @dev The starting time of TGE
	/// @param timestamp The initial timestamp, this timestap should be used for vesting
	function setInitialTimestamp(
		uint256 timestamp
	) external onlyRole(DEFAULT_ADMIN_ROLE) notInitialized {
		isInitialized = true;
		initialTimestamp = timestamp;
	}

	function getInitialTimestamp() external view returns (uint256 timestamp) {
		return initialTimestamp;
	}

	function investorsLength() external view returns (uint256 _investorsLenght) {
		return investors.length;
	}

	function addInvestorBatch(
		address[] calldata _torchWallets,
		address[] calldata _xTorchWallets,
		uint256[] calldata _tokensAllotments,
		Category[] calldata _categories
	) external onlyRole(DEFAULT_ADMIN_ROLE) {
		require(
			_tokensAllotments.length == _categories.length,
			"addInvestorBatch: array lengths should be the same"
		);
		require(
			_categories.length == _torchWallets.length,
			"addInvestorBatch: array lengths should be the same"
		);
		require(
			_torchWallets.length == _xTorchWallets.length,
			"addInvestorBatch: array lengths should be the same"
		);

		for (uint256 i = 0; i < _tokensAllotments.length; i++) {
			_addInvestor(
				_torchWallets[i],
				_xTorchWallets[i],
				_tokensAllotments[i],
				_categories[i]
			);
		}
	}

	function addInvestor(
		address _torchWallet,
		address _xTorchWallet,
		uint256 _tokensAllotment,
		Category _category
	) external onlyRole(DEFAULT_ADMIN_ROLE) {
		_addInvestor(_torchWallet, _xTorchWallet, _tokensAllotment, _category);
	}

	function removeInvestor(address _investor) external onlyRole(DEFAULT_ADMIN_ROLE) {
		Investor memory _info = investorsInfo[_investor];
		uint256 _allocation = _info.tokensAllotment - _info.withdrawnTokens;
		totalAllocatedAmount -= _allocation;
		totalAllotments[_info.category] -= _allocation;
		delete investorsInfo[_investor];
        activeInverstorsCount--;
		emit Removed(_investor, msg.sender, _allocation, _info.category);
	}

	/// @param _torchWallet The addresses of new investors.
	/// @param _xTorchWallet The addresses of new investors.
	/// @param _tokensAllotment The amounts of the tokens that belong to each investor.
	/// @param _category The category of the investor
	/// @dev torchWallet or xTorchWallet can be zero.
	function _addInvestor(
		address _torchWallet,
		address _xTorchWallet,
		uint256 _tokensAllotment,
		Category _category
	) internal {
		require(
			_torchWallet != address(0) || _xTorchWallet != address(0),
			"addInvestor: invalid address"
		);
		address _investor = _torchWallet == address(0) ? _xTorchWallet : _torchWallet;
		require(!investorsInfo[_investor].exists, "addInvestor: investor exists");
		require(
			_tokensAllotment > 0,
			"addInvestor: the investor allocation must be more than 0"
		);

		totalAllotments[_category] += _tokensAllotment;
		Investor storage investor = investorsInfo[_investor];

		investor.tokensAllotment = _tokensAllotment;
		investor.exists = true;
		investor.torchWallet = _torchWallet;
		investor.xTorchWallet = _xTorchWallet;
		investor.category = _category;

		investors.push(_investor);

		totalAllocatedAmount += _tokensAllotment;
        activeInverstorsCount++;
		emit Added(_investor, msg.sender, _tokensAllotment);
	}

	///@dev If torchWallet = zero, sends withdrawable amount to xTorchWallet as xTorch
	///@dev If xTorchWallet = zero, sends withdrawable amount to torchWallet as Torch
	///@dev If both of them are not zero divides withdrawable amount by 2 and sends to both of them
	function withdrawTokens() external onlyInvestor initialized {
		Investor storage investor = investorsInfo[msg.sender];

		uint256 tokensAvailable = withdrawableTokens(msg.sender);

		require(tokensAvailable > 0, "withdrawTokens: no tokens available for withdrawal");

		investor.withdrawnTokens = investor.withdrawnTokens + tokensAvailable;

		if (investor.torchWallet != address(0) && investor.xTorchWallet != address(0)) {
			TORCH.safeTransfer(investor.torchWallet, tokensAvailable / 2);
			xTORCH.safeTransfer(investor.xTorchWallet, tokensAvailable / 2);

			emit Withdrawn(msg.sender, tokensAvailable / 2, tokensAvailable / 2);
		} else {
			if (investor.torchWallet != address(0)) {
				TORCH.safeTransfer(investor.torchWallet, tokensAvailable);
				emit Withdrawn(msg.sender, tokensAvailable, 0);
			} else {
				xTORCH.safeTransfer(investor.xTorchWallet, tokensAvailable);
				emit Withdrawn(msg.sender, 0, tokensAvailable);
			}
		}
	}

	/// @dev withdrawable tokens for an address
	/// @param _investor whitelisted investor address
	function withdrawableTokens(
		address _investor
	) public view returns (uint256 tokensAvailable) {
		Investor storage investor = investorsInfo[_investor];

		uint256 totalUnlockedTokens = _calculateUnlockedTokens(_investor);
		uint256 tokensWithdrawable = totalUnlockedTokens - investor.withdrawnTokens;
		return tokensWithdrawable;
	}

	/// @dev calculate the amount of unlocked tokens of an investor
	function _calculateUnlockedTokens(
		address _investor
	) internal view returns (uint256 availableTokens) {
		Investor storage investor = investorsInfo[_investor];
		require(
			investor.withdrawnTokens < investor.tokensAllotment,
			"withdrawTokens: investor has already withdrawn all available balance"
		);

		CategoryDetail memory categoryDetail = categoryDetails[investor.category];
		uint256 cliffTimestamp = initialTimestamp + categoryDetail.cliffDays * 1 days;
		uint256 vestingTimestamp = cliffTimestamp + categoryDetail.recurrence * 1 days;

		uint256 currentTimeStamp = getCurrentTimestamp();
		if (initialTimestamp == 0) return 0;

		if (currentTimeStamp > initialTimestamp) {
			if (currentTimeStamp <= cliffTimestamp) {
				return 0;
			} else if (
				currentTimeStamp > cliffTimestamp &&
				currentTimeStamp < vestingTimestamp
			) {
				uint256 vestingDistroAmount = investor.tokensAllotment;

				uint256 occurence = DateTime.diffDays(
					cliffTimestamp,
					currentTimeStamp
				);

				uint256 vestingUnlockedAmount = (occurence * vestingDistroAmount) /
					categoryDetail.recurrence;

				return vestingUnlockedAmount; // total unlocked amount
			} else {
				return investor.tokensAllotment;
			}
		} else {
			return 0;
		}
	}

    function getCurrentTimestamp() public view returns (uint256 timestamp) {
        return block.timestamp;
    }

	function recoverToken(
		address _token,
		uint256 amount
	) external onlyRole(DEFAULT_ADMIN_ROLE) {
		IERC20(_token).safeTransfer(msg.sender, amount);
		emit RecoverToken(_token, amount);
	}

}
