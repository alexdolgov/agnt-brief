// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import "./interfaces/IWETH.sol";
import "./interfaces/ISwap.sol";
import "./IStrategy.sol";

contract BaseStrategyV2 is OwnableUpgradeable, ReentrancyGuardUpgradeable, PausableUpgradeable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    bool public isSameAssetDeposit;
    bool public isAutoComp; // this vault is purely for staking. eg. ETH-BTC staking vault.

    address public farmContractAddress; // address of farm, eg, PCS, Thugs etc.
    uint256 public pid; // pid of pool in farmContractAddress
    IERC20 public wantAddress;
    address public earnedAddress;

    address public wethAddress;
    address public vaultAddress;
    address public govAddress; // timelock contract
    bool public onlyGov = true;

    uint256 public lastHarvestBlock = 0;
    uint256 public lastEarnBlock = 0;
    uint256 public sharesTotal = 0;
    ISwap public swapAddress; // swap address

    uint256 public controllerFee = 100; // 1%;
    uint256 public constant controllerFeeMax = 10000; // 100 = 1%
    uint256 public constant controllerFeeUL = 1000;
    address public feeAddress;

    ////////////////////////////////
    // reward part
    uint256 internal constant ACC_TOKEN_PRECISION = 1e12;
    struct UserInfo {
        uint256 amount;
        uint256 rewardDebt;
    }

    /// @notice Info of each rewardInfo.
    struct RewardInfo {
        IERC20 rewardToken;
        uint256 amount;
        uint256 accTokenPerShare;
    }

    /// @notice Info of the rewardInfo.
    RewardInfo[] public rewardInfo;
    /// @notice tokenId => userId => UserInfo
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    event OnReward(address indexed rewardToken, address indexed user, uint256 amount, uint256 rewards);
    event RewardRateUpdated(address indexed rewardToken, uint256 oldRate);
    ////////////////////////////////

    function _vaultDeposit(uint256 _amount) internal virtual { }
    function _vaultWithdraw(uint256 _amount) internal virtual { }
    function _vaultHarvest() public virtual { }
    function _vaultUserInfo() public virtual view returns (uint256) { return 0; }
    function _vaultPending() public virtual view returns (uint256[] memory) { return new uint256[](0); }
    function _vaultEmergencyWithdraw() internal virtual {
        _vaultWithdraw(_vaultUserInfo());
    }

    function vaultHarvest() internal virtual {
        // optimise for the harvest
        if (block.number > lastHarvestBlock) {
            _vaultHarvest();
            lastHarvestBlock = block.number;
        }
    }
    function vaultDeposit() internal virtual {
        _vaultDeposit(wantAddress.balanceOf(address(this)));
    }

    event SetSettings(uint256 _controllerFee);

    event SetGov(address _govAddress);
    event SetOnlyGov(bool _onlyGov);
    event SetFeeAddress(address _rewardsAddress);
    event SetSwapAddress(address _swapAddress);
    event Earn(uint256 lastEarnBlock, uint256 earnedAmt, uint256 sharesTotal, uint256 wantLockedTotal);

    modifier onlyAllowGov() {
        require(msg.sender == govAddress, "!gov");
        _;
    }

    function __initialize(
        address[] memory _addresses,
        uint256 _pid,
        bool _isSameAssetDeposit,
        bool _isAutoComp
    ) internal virtual initializer {
        OwnableUpgradeable.__Ownable_init();
        ReentrancyGuardUpgradeable.__ReentrancyGuard_init();
        PausableUpgradeable.__Pausable_init();

        wethAddress = _addresses[0];
        govAddress = _addresses[1];
        vaultAddress = _addresses[2];

        wantAddress = IERC20(_addresses[3]);
        earnedAddress = _addresses[4];
        farmContractAddress = _addresses[5];
        feeAddress = _addresses[6];
        swapAddress = ISwap(_addresses[7]);

        pid = _pid;
        isSameAssetDeposit = _isSameAssetDeposit;
        isAutoComp = _isAutoComp;
		if (!isAutoComp && earnedAddress != address(0)) {
        	_addRewardToken(IERC20(earnedAddress));
		}

        transferOwnership(vaultAddress);
    }

    function initialize(
        address[] memory _addresses,
        uint256 _pid,
        bool _isSameAssetDeposit,
        bool _isAutoComp
    ) public virtual {
        __initialize(_addresses, _pid, _isSameAssetDeposit, _isAutoComp);
    }

    function sharesInfo() public virtual view returns (uint256, uint256)
    {
        return (wantLockedTotal(), sharesTotal);
    }

    function wantLockedTotal() public virtual view returns (uint256)
    {
        return wantAddress.balanceOf(address(this)).add(_vaultUserInfo());
    }

    /**
     * @dev Function for various UIs to display the current value of one of our yield tokens.
     * Returns an uint256 with 18 decimals of how much underlying asset one vault share represents.
     */
    function getPricePerFullShare() public view returns (uint256) {
        return sharesTotal == 0 ? 1e18 : wantLockedTotal() * 1e18 / sharesTotal;
    }

    // Receives new deposits from user
    function deposit(address _userAddress, uint256 _wantAmt)
        public virtual
        onlyOwner
        nonReentrant
        whenNotPaused
        returns (uint256)
    {
        _userAddress;
        uint256 wantLockedBefore = wantLockedTotal();
        // Call must happen before transfer
        wantAddress.safeTransferFrom(address(msg.sender), address(this), _wantAmt);

        // Proper deposit amount for tokens with fees, or vaults with deposit fees
        vaultDeposit();

        uint256 sharesAdded = _wantAmt;
        if (sharesTotal > 0) {
            sharesAdded = sharesAdded.mul(sharesTotal).div(wantLockedBefore);
        }
        sharesTotal = sharesTotal.add(sharesAdded);

        return sharesAdded;
    }

    function withdraw(address _userAddress, uint256 _wantAmt)
        public virtual
        onlyOwner
        nonReentrant
        whenNotPaused
        returns (uint256)
    {
        _userAddress;
        require(_wantAmt > 0, "_wantAmt <= 0");

        uint256 wantAmt = wantAddress.balanceOf(address(this));

        // Check if strategy has tokens from panic
        if (_wantAmt > wantAmt) {
            _vaultWithdraw(_wantAmt.sub(wantAmt));
            wantAmt = wantAddress.balanceOf(address(this));
        }

        if (_wantAmt > wantAmt) {
            _wantAmt = wantAmt;
        }

        uint256 wantLockedAfter = wantLockedTotal();
        if (_wantAmt > wantLockedAfter) {
            _wantAmt = wantLockedAfter;
        }

        uint256 sharesRemoved = _wantAmt.mul(sharesTotal).div(wantLockedAfter);
        if (sharesRemoved > sharesTotal) {
            sharesRemoved = sharesTotal;
        }
        sharesTotal = sharesTotal.sub(sharesRemoved);

        wantAddress.safeTransfer(msg.sender, _wantAmt);

        return sharesRemoved;
    }

    // 1. Harvest farm tokens
    // 2. Converts farm tokens into want tokens
    // 3. Deposits want tokens
    function earn()
        public virtual
        nonReentrant
        whenNotPaused
    {
		// only for auto-comp
        if (!isAutoComp) return;

        if (onlyGov) {
            require(msg.sender == govAddress, "!gov");
        }

        // Harvest farm tokens
        vaultHarvest();

        uint256 earnedAmt;
        earnedAmt = _earnNow();
        earnedAmt = distributeFees(earnedAddress, earnedAmt);

        if (!isSameAssetDeposit) {
           _earnLp(earnedAmt);
        }

        vaultDeposit();

        lastEarnBlock = block.number;
        emit Earn(lastEarnBlock, earnedAmt, sharesTotal, wantLockedTotal());
    }

    function _earnLp(uint256 earnedAmt)
        internal
        virtual
    {
        IERC20(earnedAddress).safeIncreaseAllowance(address(swapAddress), earnedAmt);
		swapAddress.zapLPToken(earnedAddress, address(wantAddress), earnedAmt, address(this));
    }

    function _earnNow()
        internal
        virtual
        returns (uint256)
    {
        // Converts farm tokens into want tokens
        if (earnedAddress == wethAddress) {
            _wrapETH();
        }
        return IERC20(earnedAddress).balanceOf(address(this));
    }

    function distributeFees(address _token, uint256 _earnedAmt)
        internal virtual
        returns (uint256)
    {
        if (_earnedAmt > 0) {
            // Performance fee
            if (controllerFee > 0 && feeAddress != address(0)) {
                uint256 fee = _earnedAmt.mul(controllerFee).div(controllerFeeMax);
                IERC20(_token).safeTransfer(feeAddress, fee);
                _earnedAmt = _earnedAmt.sub(fee);
            }
        }

        return _earnedAmt;
    }

    /////////////////////
    // Reward FUNCTION.
    function onReward(address _user, uint256 _lpAmount)
        external virtual
        onlyOwner
        nonReentrant
        returns (uint256[] memory rewards)
    {
		if (isAutoComp) {
        	return new uint256[](0);
		} else {
        	_updateReward();
        	return _onReward(_user, _lpAmount);
		}
    }

    function pendingToken(address _user)
        external view virtual
        returns (address[] memory tokenAddress, uint256[] memory pendingAmount)
    {
		if (isAutoComp) {
        	return (new address[](0), new uint256[](0));
		} else {
			return _pendingToken(_user);
		}
    }

    function _harvestAll() internal returns (uint256[] memory harvests) {
        uint256 length = rewardInfo.length;
        harvests = new uint256[](length);
        for (uint256 i; i < length; ++i) {
            RewardInfo storage reward = rewardInfo[i];
            harvests[i] = reward.rewardToken.balanceOf(address(this));
        }

        _vaultHarvest();

        for (uint256 i; i < length; ++i) {
            RewardInfo storage reward = rewardInfo[i];
            harvests[i] = reward.rewardToken.balanceOf(address(this)) - harvests[i];
        }
    }

    function _updateReward() internal {
		uint256[] memory harvests = _harvestAll();

        require(harvests.length == rewardInfo.length, "!reward length != harvest length");
		for (uint256 i; i < rewardInfo.length; ++i) {
			RewardInfo storage reward = rewardInfo[i];

			if (reward.amount > 0) {
				reward.accTokenPerShare += (harvests[i] * ACC_TOKEN_PRECISION) / reward.amount;
			}
		}
    }

	function _addRewardToken(IERC20 _rewardToken) internal {
		RewardInfo memory reward = RewardInfo({
				rewardToken: _rewardToken,
				amount: 0,
				accTokenPerShare: 1e18
			});
		rewardInfo.push(reward);
		emit RewardRateUpdated(address(_rewardToken), 0);
	}

    function _onReward(address _user, uint256 _lpAmount)
        internal virtual
        returns (uint256[] memory rewards)
    {
        uint256 length = rewardInfo.length;
        rewards = new uint256[](length);
        for (uint256 i; i < length; ++i) {
            RewardInfo storage reward = rewardInfo[i];
            IERC20 rewardToken = reward.rewardToken;
            UserInfo storage user = userInfo[i][_user];

            if (user.rewardDebt > 0) {
                rewards[i] = ((user.amount * reward.accTokenPerShare) / ACC_TOKEN_PRECISION) - user.rewardDebt;
                uint256 bal = rewardToken.balanceOf(address(this));
                if (rewards[i] > bal) {
				    rewardToken.safeTransfer(_user, bal);
                } else {
				    rewardToken.safeTransfer(_user, rewards[i]);
                }
            }

            emit OnReward(address(rewardToken), _user, user.amount, rewards[i]);

            // update the reward pool amount
            reward.amount = reward.amount + _lpAmount - user.amount;
            user.amount = _lpAmount;
            user.rewardDebt = (_lpAmount * reward.accTokenPerShare) / ACC_TOKEN_PRECISION;
        }
    }

    function _pendingToken(address _user)
        internal view
        returns (address[] memory tokenAddress, uint256[] memory pendingAmount)
    {
        uint256 length = rewardInfo.length;
        tokenAddress = new address[](length);
        pendingAmount = new uint256[](length);

        uint256[] memory pending = _vaultPending();
        require(pending.length == length, "!reward length != pending length");
        for (uint256 i; i < length; ++i) {
            RewardInfo storage reward = rewardInfo[i];
            UserInfo storage user = userInfo[i][_user];

            tokenAddress[i] = address(reward.rewardToken);
            if (reward.amount > 0) {
                uint256 new_accTokenPerShare = reward.accTokenPerShare + (pending[i] * ACC_TOKEN_PRECISION) / reward.amount;
                pendingAmount[i] = ((user.amount * new_accTokenPerShare) / ACC_TOKEN_PRECISION) - user.rewardDebt;
            }
        }
    }

	function addRewardToken(IERC20 _rewardToken) external onlyAllowGov {
		_updateReward();
	    _addRewardToken(_rewardToken);
    }

    // ADMIN FUNCTION.
    function setSettings( uint256 _controllerFee) public virtual onlyAllowGov {
        require(_controllerFee <= controllerFeeUL, "_controllerFee too high");
        controllerFee = _controllerFee;

        emit SetSettings(_controllerFee);
    }

    function pause() public virtual onlyAllowGov {
        _pause();
    }

    function unpause() external onlyAllowGov {
        _unpause();
    }

    function panic() external onlyAllowGov {
        _pause();
        _vaultEmergencyWithdraw();
    }

    function unpanic() external onlyAllowGov {
        _unpause();
        vaultDeposit();
    }

    function setGov(address _govAddress) public virtual onlyAllowGov {
        govAddress = _govAddress;
        emit SetGov(_govAddress);
    }

    function setOnlyGov(bool _onlyGov) public virtual onlyAllowGov {
        onlyGov = _onlyGov;
        emit SetOnlyGov(_onlyGov);
    }

    function setFeeAddress(address _feeAddress) public virtual onlyAllowGov {
        feeAddress = _feeAddress;
        emit SetFeeAddress(_feeAddress);
    }

    function setSwapAddress(address _swapAddress) public virtual onlyAllowGov {
        swapAddress = ISwap(_swapAddress); // swap address
        emit SetSwapAddress(_swapAddress);
    }

    function setIsAutoComp(bool _isAutoComp) public virtual onlyAllowGov {
		isAutoComp = _isAutoComp;
    }

    function _wrapETH() internal virtual {
        // ETH -> WETH
        uint256 ethBal = address(this).balance;
        if (ethBal > 0) {
            IWETH(wethAddress).deposit{value: ethBal}(); // ETH -> WETH
        }
    }

    function wrapETH() public virtual onlyAllowGov {
        _wrapETH();
    }
}
