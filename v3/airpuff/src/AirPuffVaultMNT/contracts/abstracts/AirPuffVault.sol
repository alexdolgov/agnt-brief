// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

import "@openzeppelin/contracts/utils/math/Math.sol";
import "../interfaces/IAirPuffHandler.sol";
import "../interfaces/IVault.sol";
import "../interfaces/ILending.sol";
import "../interfaces/IMntStakeV2Contract.sol";
import "../interfaces/Oracle/IAPI3Oracle.sol";
import "../interfaces/IWMNT.sol";
import "../interfaces/IMntRewardsClaimXINTX.sol";
import "../interfaces/IStakedINTX.sol";


abstract contract AirPuffVault is
    IVault,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable,
    ERC20BurnableUpgradeable
{
    using SafeERC20 for IERC20;
    using Math for uint256;
    

    FeeConfiguration public feeConfiguration;
    LeverageBounds public leverageBounds;
    StrategyAddresses public strategyAddresses;

    address[] public allUsers;
    uint256 public MAX_BPS;
    uint256 public DENOMINATOR;
    uint256 public DECIMAL;
    uint256 public DTVLimit;
    address public LendingVault;
    address public keeper;

    mapping(address => UserInfo[]) public userInfo;
    mapping(address => mapping(uint256 => PositionTimestamps)) public positionTimestamps;
    mapping(address => bool) public isUser;
    mapping(address => bool) public allowedSenders;

    uint256[50] private __gaps;
    address public MntRewardsClaimXINTX;

    modifier InvalidID(uint256 positionId, address user) {
        require(
            positionId < userInfo[user].length,
            "AirPuff: positionID is not valid"
        );
        _;
    }

    /** ----------- Change onlyOwner functions ------------- */
    function setMntRewardsClaimXINTXAddress(address _claimContract) external onlyOwner {
        require(_claimContract != address(0), "Invalid address");
        MntRewardsClaimXINTX = _claimContract;
    }

    function setLendingPool(address _lendingPool) external onlyOwner {
        require(
            _lendingPool != address(0),
            "AirPuff: Pool address is invalid"
        );
        LendingVault = _lendingPool;
        emit SetLendingVault(_lendingPool);
    }

    function setKeeper(address _keeper) external onlyOwner {
        require(_keeper != address(0), "Invalid address");
        keeper = _keeper;
        emit SetKeeper(_keeper);
    }

    function setAllowed(address _sender, bool _allowed) public onlyOwner {
        allowedSenders[_sender] = _allowed;
        emit SetAllowedSenders(_sender, _allowed);
    }

    function setProtocolFee(
        address _feeReceiver,
        uint256 _withdrawalFee,
        address _lendingFeeReceiver,
        uint256 _liquidatorRewardsPercent
    ) external onlyOwner {
        require(_withdrawalFee <= MAX_BPS, "Invalid fees");
        require(_feeReceiver != address(0), "Invalid address");

        feeConfiguration.feeReceiver = _feeReceiver;
        feeConfiguration.withdrawalFee = _withdrawalFee;
        feeConfiguration.lendingFeeReceiver = _lendingFeeReceiver;
        feeConfiguration.liquidatorRewardsPercent = _liquidatorRewardsPercent;

        emit ProtocolFeeChanged(_feeReceiver, _withdrawalFee);
    }

    function setStrategyAddress(
        address _mnt,
        address _mShard,
        address _mntStaking,
        address _handler,
        address _supraPriceFeed
    ) external onlyOwner {
        strategyAddresses.MNT = _mnt;
        strategyAddresses.MShards = _mShard;
        strategyAddresses.MntStakeContract = _mntStaking;
        strategyAddresses.AirPuffHandler = _handler;
        strategyAddresses.MantleOracle = _supraPriceFeed;
        emit SetStrategyAddresses(_mnt, _mShard, _mntStaking, _handler, _supraPriceFeed);
    }

    function setLeverageBounds(
        uint256 _minLeverage,
        uint256 _maxLeverage,
        uint256 _minDeposit
    ) external onlyOwner {
        leverageBounds.minLeverage = _minLeverage;
        leverageBounds.maxLeverage = _maxLeverage;
        leverageBounds.minDeposit = _minDeposit;
        emit LeverageBoundsSet(_minLeverage, _maxLeverage, _minDeposit);
    }

    function setDTVLimit(uint256 _DTVLimit) external onlyOwner {
        DTVLimit = _DTVLimit;
        emit DTVLimitChanged(_DTVLimit);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function claimReward() external {
        require(msg.sender == keeper, "AirPuff: only keeper can claim reward");
        IMntStakeV2Contract(strategyAddresses.MntStakeContract).claimReward();
    }

    function claimXINTX(address _receiver) external onlyOwner{
        require(MntRewardsClaimXINTX != address(0), "AirPuff: claim contract not set");
        IMntRewardsClaimXINTX(MntRewardsClaimXINTX).claim();
        address stakedINTX = IMntRewardsClaimXINTX(MntRewardsClaimXINTX).xIntx();
        uint256 id = IStakedINTX(stakedINTX).lastTokenId();
        // if balance of reward token is greater than 0 then transfer to receiver
        address rewardToken = IStakedINTX(stakedINTX).rewardToken();
        uint256[] memory tokenIds = new uint256[](1);
        tokenIds[0] = id;

        // claim the nft by unstaking
        IStakedINTX(stakedINTX).claim(tokenIds);
        // unstake the token to get intx
        IStakedINTX(stakedINTX).unstake(id);

        // Return this magic value to signal the transfer was handled correctly
        if (IERC20(rewardToken).balanceOf(address(this)) > 0) {
            IERC20(rewardToken).safeTransfer(_receiver, IERC20(rewardToken).balanceOf(address(this)));
        }
        address intx = IStakedINTX(stakedINTX).INTX();
        // if balance of intx token is greater than 0 then transfer to receiver
        if (IERC20(intx).balanceOf(address(this)) > 0) {
            IERC20(intx).safeTransfer(_receiver, IERC20(intx).balanceOf(address(this)));
        }
    }


    /** ----------- View functions ------------- */
    function getRewards() external view returns (uint256) {
        return IMntStakeV2Contract(strategyAddresses.MntStakeContract).rewards(address(this));
    }

    function getEarned() external view returns (uint256) {
        return IMntStakeV2Contract(strategyAddresses.MntStakeContract).earned(address(this));
    }

    function getTotalStaked() external view returns (uint256) {
        return IMntStakeV2Contract(strategyAddresses.MntStakeContract).balances(address(this));
    }

    function getVaultRewardPerTokenPaid() external view returns (uint256) {
        return IMntStakeV2Contract(strategyAddresses.MntStakeContract).userRewardPerTokenPaid(address(this));
    }

    function getAllUsers() public view returns (address[] memory) {
        return allUsers;
    }

    function getTotalNumbersOfOpenPositionBy(
        address _user
    ) public view returns (uint256) {
        return userInfo[_user].length;
    }

    function getUpdatedDebt(
        uint256 _positionID,
        address _user
    ) public view returns (uint256, uint256, uint256, uint256) {
        UserInfo memory _userInfo = userInfo[_user][_positionID];
        if (_userInfo.closed || _userInfo.liquidated) return (0, 0, 0, 0);

        (uint256 leverageWithInterests, uint256 totalInterests) = IAirPuffHandler(
            strategyAddresses.AirPuffHandler
        ).getPositionWithInterestRate(
                _user,
                _positionID,
                address(this)
            );

        uint256 userPosition = _userInfo.position;

        // Calculate the current DTV by dividing the amount owed to lending by the current position
        uint256 currentDTV = (leverageWithInterests * DECIMAL) / userPosition;
        // Return the current DTV, current position, and amount owed to lending
        return (
            currentDTV,
            userPosition,
            leverageWithInterests,
            totalInterests
        );
    }

    function getCurrentPositionValue(
        uint256 _positionID,
        address _user
    ) external view returns (uint256) {
        UserInfo memory _userInfo = userInfo[_user][_positionID];
        if (_userInfo.closed || _userInfo.liquidated) return 0;

        return (
            _getInputAssetValue(_userInfo.position, getMantlePrice())
        );
    }

    function getMantlePrice() public view returns (uint256) {
        (int224 LRTAssetPriceInt,) = IAPI3Oracle(strategyAddresses.MantleOracle).read();
        uint256 LRTAssetPrice = abi.decode(abi.encode(LRTAssetPriceInt), (uint256));
        return LRTAssetPrice;
    }

    /** ----------- User functions ------------- */

    function openPosition(uint256 _leverage) external payable whenNotPaused nonReentrant {
        require(_leverage >= leverageBounds.minLeverage && _leverage <= leverageBounds.maxLeverage, "Invalid leverage");
        uint256 _amount = msg.value;
        require(_amount > leverageBounds.minDeposit, "Amount must > min");
        // get leverage amount
        uint256 leveragedAmount = ((_amount * _leverage) / DENOMINATOR) - _amount;
        bool status = ILending(LendingVault).lend(leveragedAmount, address(this));
        require(status, "Lend failed");

        IWMNT(strategyAddresses.MNT).withdraw(leveragedAmount);

        uint256 stakedBalanceBefore = IMntStakeV2Contract(strategyAddresses.MntStakeContract).balances(address(this));

        IMntStakeV2Contract(strategyAddresses.MntStakeContract).stake{value:  _amount + leveragedAmount}();

        uint256 stakedBalanceAfter = IMntStakeV2Contract(strategyAddresses.MntStakeContract).balances(address(this));
        uint256 mintedAmount = stakedBalanceAfter - stakedBalanceBefore;
        require(mintedAmount > 0, "stakedBalanceAfter !> stakedBalanceBefore");

        uint256 posID = userInfo[msg.sender].length;

        UserInfo memory _userInfo = UserInfo({
            user: msg.sender,
            deposit: _amount,
            leverage: _leverage,
            position: mintedAmount,
            liquidated: false,
            liquidator: address(0),
            leverageAmount: leveragedAmount,
            positionId: posID,
            closed: false
        });


        PositionTimestamps storage pts = positionTimestamps[msg.sender][posID];
        pts.openTimestamp = block.timestamp;
        pts.vaultSnapshotID = IAirPuffHandler(strategyAddresses.AirPuffHandler).vaultCurrentSnapshotID(LendingVault);

        //frontend helper to fetch all users and then their userInfo
        if (isUser[msg.sender] == false) {
            isUser[msg.sender] = true;
            allUsers.push(msg.sender);
        }

        userInfo[msg.sender].push(_userInfo);

        // mint pod
        _mint(msg.sender, mintedAmount);
        emit Deposit(
            msg.sender,
            _amount,
            mintedAmount,
            block.timestamp,
            posID,
            _leverage
        );
    }

    function closePosition(
        uint256 _positionID,
        address _user
    ) external InvalidID(_positionID, _user) whenNotPaused nonReentrant {
        UserInfo storage _userInfo = userInfo[_user][_positionID];
        PositionTimestamps storage pts = positionTimestamps[_user][_positionID];
        require(!_userInfo.closed, "AirPuff: position has already been closed");
        require(!_userInfo.liquidated, "AirPuff: position has already been closed");
        require(
            _userInfo.position > 0,
            "AirPuff: position is not enough to close"
        );
        require(
            _userInfo.user == msg.sender,
            "AirPuff: only the owner can close the position"
        );
        CloseData memory closeData;
        closeData.userPosition = _userInfo.position;

        _burn(_user, closeData.userPosition);
        (closeData.currentDTV, , closeData.leverageWithInterests, closeData.totalInterests) = getUpdatedDebt(_positionID, _user);
        
        if (closeData.currentDTV >= DTVLimit) {
            revert("Wait for liquidation");
        }

        uint256 originalInterests = closeData.totalInterests;

        uint256 contractBalanceBefore = address(this).balance;
        IMntStakeV2Contract(strategyAddresses.MntStakeContract).withdraw(closeData.userPosition);
        uint256 contractBalanceAfter = address(this).balance;
        closeData.amountReceived = contractBalanceAfter - contractBalanceBefore;

        if (closeData.amountReceived <= _userInfo.leverageAmount) {
            IWMNT(strategyAddresses.MNT).deposit{value: closeData.amountReceived}();
            IERC20(strategyAddresses.MNT).safeApprove(LendingVault, closeData.amountReceived);
            ILending(LendingVault).repayDebt(_userInfo.leverageAmount, closeData.amountReceived);
            _userInfo.liquidated = true;
            _userInfo.liquidator = msg.sender;
            emit Liquidated(
                _user,
                _positionID,
                msg.sender,
                closeData.amountReceived,
                block.timestamp,
                originalInterests,
                closeData.totalInterests
            );
        }
        _userInfo.closed = true;
        pts.closeTimestamp = block.timestamp;

        if (_userInfo.liquidated) {
            return;
        }
        
        bool success;
        if (closeData.amountReceived < _userInfo.leverageAmount + closeData.totalInterests && closeData.amountReceived > _userInfo.leverageAmount) {
            closeData.lendingRepayment = _userInfo.leverageAmount;
            closeData.totalInterests = closeData.amountReceived - closeData.lendingRepayment;
        } else {
            closeData.lendingRepayment = _userInfo.leverageAmount;
            closeData.toLeverageUser = closeData.amountReceived - closeData.lendingRepayment - closeData.totalInterests;

            if (feeConfiguration.withdrawalFee > 0) {
                uint256 withdrawFee = closeData.toLeverageUser.mulDiv(feeConfiguration.withdrawalFee, MAX_BPS);
                payable(feeConfiguration.feeReceiver).transfer(withdrawFee);
                closeData.toLeverageUser = closeData.toLeverageUser - withdrawFee;
            }
        }
        

        IWMNT(strategyAddresses.MNT).deposit{value: closeData.lendingRepayment}();
        IERC20(strategyAddresses.MNT).safeApprove(LendingVault, closeData.lendingRepayment);
        success = ILending(LendingVault).repayDebt(_userInfo.leverageAmount, closeData.lendingRepayment);
        require(success, "LendingPool debt repayment fails");

        if (closeData.totalInterests > 0) {
            (success, ) = payable(feeConfiguration.lendingFeeReceiver).call{ value: closeData.totalInterests }("");
            require(success, "Transfer to lending fee receiver failed");
        }

        (success, ) = payable(_user).call{ value: closeData.toLeverageUser }("");
        require(success, "Transfer failed.");

        emit Withdraw(
            msg.sender,
            _positionID,
            closeData.toLeverageUser,
            _userInfo.leverageAmount,
            closeData.lendingRepayment,
            block.timestamp,
            closeData.userPosition
        );
    }

    function liquidatePosition(uint256 _positionID, address _user) external InvalidID(_positionID, _user) whenNotPaused nonReentrant {
        UserInfo storage _userInfo = userInfo[_user][_positionID];
        PositionTimestamps storage pts = positionTimestamps[_user][_positionID];
        require(!_userInfo.liquidated && !_userInfo.closed, "AirPuff: Already liquidated or closed");
        require(_userInfo.user != address(0), "AirPuff: no active position");
        CloseData memory closeData;
        closeData.userPosition = _userInfo.position;

        // should claim before withdraw
        (closeData.currentDTV,,,closeData.totalInterests) = getUpdatedDebt(_positionID, _user);
        require(closeData.currentDTV >= DTVLimit, "AirPuff: position is not ready for liquidation");

        uint256 contractBalanceBefore = address(this).balance;
        IMntStakeV2Contract(strategyAddresses.MntStakeContract).withdraw(closeData.userPosition);
        uint256 contractBalanceAfter = address(this).balance;
        closeData.amountReceived = contractBalanceAfter - contractBalanceBefore;

        uint256 originalInterests = closeData.totalInterests;
        closeData.userPosition = _userInfo.position;
        
        _burn(_user, closeData.userPosition);

        _userInfo.liquidator = msg.sender;
        _userInfo.liquidated = true;
        _userInfo.closed = true;
        pts.closeTimestamp = block.timestamp;

        uint256 liquidatorReward;
        if (closeData.amountReceived < _userInfo.leverageAmount) {
            closeData.lendingRepayment = closeData.amountReceived;
            closeData.totalInterests = 0;
        } else if (closeData.amountReceived < _userInfo.leverageAmount + closeData.totalInterests && closeData.amountReceived >= _userInfo.leverageAmount) {
            closeData.lendingRepayment = _userInfo.leverageAmount;
            closeData.totalInterests = closeData.amountReceived - closeData.lendingRepayment;
        } else {
            closeData.lendingRepayment = _userInfo.leverageAmount;
            closeData.toLeverageUser = closeData.amountReceived - closeData.lendingRepayment - closeData.totalInterests;

            liquidatorReward = closeData.toLeverageUser * feeConfiguration.liquidatorRewardsPercent  / MAX_BPS;
            closeData.toLeverageUser = closeData.toLeverageUser - liquidatorReward;
        }

        IWMNT(strategyAddresses.MNT).deposit{value: closeData.lendingRepayment}();
        IERC20(strategyAddresses.MNT).safeApprove(LendingVault, closeData.lendingRepayment);
        bool success;
        success = ILending(LendingVault).repayDebt(_userInfo.leverageAmount, closeData.lendingRepayment);
        require(success, "LendingPool debt repayment fails");

        if (closeData.totalInterests > 0) {
            (success, ) = payable(feeConfiguration.lendingFeeReceiver).call{ value: closeData.totalInterests }("");
            require(success, "Transfer to lending fee receiver failed");
        }
        if (liquidatorReward > 0) {
            (success, ) = payable(_userInfo.liquidator).call{ value: liquidatorReward }("");
            require(success, "Transfer liquidator reward failed");
        }
        if (closeData.toLeverageUser > 0) {
            (success, ) = payable(_userInfo.user).call{ value: closeData.toLeverageUser }("");
            require(success, "Transfer leverage user failed");
        }

        emit Liquidated(_user, _positionID, msg.sender, liquidatorReward, block.timestamp, closeData.totalInterests, originalInterests);
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual override returns (bool) {
        address spender = _msgSender();
        require(
            allowedSenders[from] ||
                allowedSenders[to] ||
                allowedSenders[spender],
            "ERC20: transfer not allowed"
        );
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    function transfer(
        address to,
        uint256 amount
    ) public virtual override returns (bool) {
        address ownerOf = _msgSender();
        require(
            allowedSenders[ownerOf] || allowedSenders[to],
            "ERC20: transfer not allowed"
        );
        _transfer(ownerOf, to, amount);
        return true;
    }

    function burn(uint256 amount) public virtual override {
        revert("AirPuff: burning is not allowed");
    }

    function burnFrom(address from, uint256 amount) public virtual override {
        revert("AirPuff: burning is not allowed");
    }

    function _getInputAssetValue(uint256 _amount, uint256 _price) internal view returns (uint256) {
        return _amount * _price / DECIMAL;
    }

    function withdraw(uint256 _amount, address _receiver) external onlyOwner {
        address rewardToken = IMntStakeV2Contract(strategyAddresses.MntStakeContract).rewardToken();
        IERC20(rewardToken).safeTransfer(_receiver, _amount);
    }

    // Implement the onERC721Received function to comply with the IERC721Receiver interface
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes memory data
    ) public returns (bytes4) {
        return this.onERC721Received.selector;
    }

    receive() external payable {}
}
