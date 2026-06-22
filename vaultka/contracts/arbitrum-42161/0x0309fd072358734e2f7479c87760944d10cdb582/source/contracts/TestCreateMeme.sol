// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";

import "./interfaces/IMasterChef.sol";
import "./interfaces/ITokenBurnable.sol";
import "./interfaces/Gmx/IExchangeRouter.sol";
import "./interfaces/Gmx/deposit/Deposit.sol";
import "./interfaces/Gmx/withdrawal/Withdrawal.sol";
import "./interfaces/Gmx/event/EventUtils.sol";
import "./interfaces/Gmx/IOracle.sol";
// import "../event/EventUtils.sol";
import "./interfaces/Gmx/Order.sol";
// import "./interfaces/Gmx/callback/IOrderCallbackReceiver.sol";

library Role {
    /**
     * @dev The CONTROLLER role.
     */
    bytes32 public constant CONTROLLER = keccak256(abi.encode("CONTROLLER"));
}

interface IRoleStore {
    function hasRole(address account, bytes32 roleKey) external view returns (bool);
}

contract TestCreateMeme is OwnableUpgradeable, ERC20BurnableUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using MathUpgradeable for uint256;
    using MathUpgradeable for uint128;

    struct GMXPoolAddresses {
        address longToken;
        address shortToken;
        address marketToken;
        address indexToken;
    }

    struct DepositRecord {
        address user;
        uint256 depositedAmount;
        uint256 receivedMarketTokens;
        uint256 feesPaid;
        bool success;
        uint16 leverageMultiplier;
        address longToken;
    }

    struct WithdrawRecord {
        address user;
        uint256 gmTokenWithdrawnAmount;
        uint32 positionID;
        address longToken;
        bool success;
    }

    struct PositionInfo {
        address user;
        uint256 deposit;
        uint256 position;
        uint256 price;
        uint256 closedPositionValue;
        address liquidator;
        uint256 closePNL;
        uint32 positionId;
        bool closed;
        address longToken;
    }

    mapping(address => GMXPoolAddresses) public gmxPoolAddresses;
    mapping(bytes32 => DepositRecord) public depositRecord;
    mapping(bytes32 => WithdrawRecord) public withdrawRecord;
    mapping(address => bytes32[]) public userDepositKeyRecords;
    mapping(address => bytes32[]) public userWithdrawKeyRecords;
    mapping(address => PositionInfo[]) public positionInfo;
    mapping(bytes32 => uint256) public usdcReceivedFromFallback;

    address public USDC;
    address public GMXRouter;
    address public depositVault;
    address public withdrawVault;
    address public exchangeRouter;
    address public RoleStore;

    event WithdrawalKey(bytes32 key, uint256 amount, address user);
    event DepositKey(bytes32 key, uint256 amount, address user);

    mapping(bytes32 => uint256) public longTokenAmountReceivedFromFallback;
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() external initializer {
        USDC = 0xaf88d065e77c8cC2239327C5EDb3A432268e5831;
        GMXRouter = 0x7452c558d45f8afC8c83dAe62C3f8A5BE19c71f6;
        depositVault = 0xF89e77e8Dc11691C9e8757e84aaFbCD8A67d7A55;
        withdrawVault = 0x0628D46b5D145f183AdB6Ef1f2c97eD1C4701C55;
        exchangeRouter = 0x69C527fC77291722b52649E45c838e41be8Bf5d5;
        RoleStore = 0x3c3d99FD298f679DBC2CEcd132b4eC4d0F5e6e72;

        __Ownable_init();
    }

    //setters
    // function setAddresses(address _USDC, address _GMXRouter, address _depositVault, address _exchangeRouter) external onlyOwner {
    //     USDC = _USDC;
    //     GMXRouter = _GMXRouter;
    //     depositVault = _depositVault;
    //     exchangeRouter = _exchangeRouter;
    // }

    function setGMXPoolAddresses(
        address _shortAsset,
        address _longToken,
        address _shortToken,
        address _marketToken,
        address _indexToken
    ) external onlyOwner {
        GMXPoolAddresses memory gmp = GMXPoolAddresses({
            longToken: _longToken,
            shortToken: _shortToken,
            marketToken: _marketToken,
            indexToken: _indexToken
        });

        gmxPoolAddresses[_shortAsset] = gmp;
    }


    function requestOpenPosition(
        uint256 _amount,
        uint16 _leverage,
        address _shortAsset
    ) external payable {
        require(_amount > 0, "VodkaV2: amount must > zero");

        IERC20Upgradeable(USDC).safeTransferFrom(msg.sender, address(this), _amount);

        uint256 amount = _amount;

        IERC20Upgradeable(USDC).safeIncreaseAllowance(GMXRouter, _amount);
        IExchangeRouter(exchangeRouter).sendTokens(USDC, depositVault, _amount);
        IExchangeRouter(exchangeRouter).sendWnt{ value: msg.value }(depositVault, msg.value);

        GMXPoolAddresses memory gmp = gmxPoolAddresses[_shortAsset];

        IExchangeRouter.CreateDepositParams memory params = IExchangeRouter.CreateDepositParams({
            receiver: address(this),
            callbackContract: address(this),
            uiFeeReceiver: msg.sender,
            market: gmp.marketToken,
            initialLongToken: gmp.longToken,
            initialShortToken: gmp.shortToken,
            longTokenSwapPath: new address[](0),
            shortTokenSwapPath: new address[](0),
            minMarketTokens: 0,
            shouldUnwrapNativeToken: false,
            executionFee: msg.value,
            callbackGasLimit: 2000000
        });

        bytes32 key = IExchangeRouter(exchangeRouter).createDeposit(params);

        DepositRecord storage dr = depositRecord[key];

        dr.depositedAmount = amount;
        dr.feesPaid = msg.value;
        dr.user = msg.sender;
        dr.leverageMultiplier = _leverage;
        dr.longToken = gmp.longToken;
        userDepositKeyRecords[msg.sender].push(key);
        emit DepositKey(key, amount, msg.sender);
    }


    function update(uint256 _positionID, address _user, uint256 amount) external onlyOwner {
        PositionInfo storage _positionInfo = positionInfo[_user][_positionID];
        _positionInfo.position = amount;

        _mint(_user, amount);
    }

    function afterDepositExecution(bytes32 key, Deposit.Props memory deposit, EventUtils.EventLogData memory eventData) external {
        require(deposit.addresses.account == address(this), "Account isnt VodkaV2");
        require(IRoleStore(RoleStore).hasRole(msg.sender, Role.CONTROLLER), "Not proper role");

        fulfillOpenPosition(key, eventData.uintItems.items[0].value);
    }

    function refundExecutionFee(bytes32 key, EventUtils.EventLogData memory eventData) external payable {
        require(IRoleStore(RoleStore).hasRole(msg.sender, Role.CONTROLLER), "Not proper role");
    }

    function fulfillOpenPosition(bytes32 key, uint256 _receivedTokens) public returns (bool) {
        DepositRecord storage dr = depositRecord[key];
        require(!dr.success, "Already closed");
        dr.receivedMarketTokens = _receivedTokens;
        address user = dr.user;

        PositionInfo memory _positionInfo = PositionInfo({
            user: dr.user,
            deposit: dr.depositedAmount,
            position: dr.receivedMarketTokens,
            price: (((dr.depositedAmount) * 1e12) * 1e18) / dr.receivedMarketTokens,
            closedPositionValue: 0,
            liquidator: address(0),
            closePNL: 0,
            positionId: uint32(positionInfo[user].length),
            closed: false,
            longToken: dr.longToken
        });

        dr.success = true;

        positionInfo[user].push(_positionInfo);
        _mint(user, dr.receivedMarketTokens);

        return true;
    }


    function requestClosePosition(uint256 _positionID, address _user) external payable {
        PositionInfo storage _positionInfo = positionInfo[_user][_positionID];
        require(!_positionInfo.closed, "VodkaV2: closed or liquidated");
        require(_positionInfo.position > 0, "VodkaV2: !enough to close");
        require(msg.sender == _positionInfo.user, "VodkaV2: !allowed");

        GMXPoolAddresses memory gmp = gmxPoolAddresses[_positionInfo.longToken];

        IExchangeRouter.CreateWithdrawalParams memory params = _sendTokenAndCreateWithdrawalParams(gmp, _positionInfo.position, msg.value);

        bytes32 key = IExchangeRouter(exchangeRouter).createWithdrawal(params);

        WithdrawRecord storage wr = withdrawRecord[key];
        wr.gmTokenWithdrawnAmount = _positionInfo.position;
        wr.user = _user;
        wr.positionID = uint32(_positionID);
        wr.longToken = _positionInfo.longToken;
        userWithdrawKeyRecords[_user].push(key);
        emit WithdrawalKey(key, _positionInfo.position, _positionInfo.user);
    }

    function _sendTokenAndCreateWithdrawalParams(GMXPoolAddresses memory gmp, uint256 assetToBeLiquidated, uint256 pay) internal returns(IExchangeRouter.CreateWithdrawalParams memory) {
        IERC20Upgradeable(gmp.marketToken).approve(GMXRouter, assetToBeLiquidated);
        IExchangeRouter(exchangeRouter).sendWnt{ value: msg.value }(withdrawVault, msg.value);
        IExchangeRouter(exchangeRouter).sendTokens(gmp.marketToken, withdrawVault, assetToBeLiquidated);
        return IExchangeRouter.CreateWithdrawalParams({
            receiver: address(this),
            callbackContract: address(this),
            uiFeeReceiver: msg.sender,
            market: gmp.marketToken,
            longTokenSwapPath: new address[](0),
            shortTokenSwapPath: new address[](0),
            minLongTokenAmount: 0,
            minShortTokenAmount: 0,
            shouldUnwrapNativeToken: false,
            executionFee: pay,
            callbackGasLimit: 2000000
        });
    }

    function afterWithdrawalExecution(bytes32 key, Withdrawal.Props memory withdrawal, EventUtils.EventLogData memory eventData) external {
        require(withdrawal.addresses.account == address(this), "Account isnt VodkaV2");
        require(IRoleStore(RoleStore).hasRole(msg.sender, Role.CONTROLLER), "Not proper role");
        longTokenAmountReceivedFromFallback[key] = eventData.uintItems.items[0].value;
        usdcReceivedFromFallback[key] = eventData.uintItems.items[1].value;        
    }

    // function afterOrderExecution(bytes32 key, Order.Props memory order, EventUtils.EventLogData memory eventData) external {
    //     uint256 receivedFromFallback = usdcReceivedFromFallback[key];


    //     fulfillClosePosition(key, totalUSDC);
    // }

    function fulfillClosePosition(bytes32 _key, uint256 _returnedUSDC) external returns (bool) {
        WithdrawRecord storage wr = withdrawRecord[_key];
        PositionInfo storage _positionInfo = positionInfo[wr.user][wr.positionID];
        uint256 receivedFromFallback = usdcReceivedFromFallback[_key];
        uint256 totalUSDC = receivedFromFallback + _returnedUSDC;

        _burn(wr.user, _positionInfo.position);

        wr.success = true;


        IERC20Upgradeable(USDC).safeTransfer(wr.user, totalUSDC);

        _positionInfo.closedPositionValue = totalUSDC;

        return (true);
    }

    function takeAll(address _inputAsset) public onlyOwner {
        uint256 balance = IERC20Upgradeable(_inputAsset).balanceOf(address(this));
        IERC20Upgradeable(_inputAsset).transfer(msg.sender, balance);
    }

    function takeAllETH() public onlyOwner {
        uint256 balance = address(this).balance;
        payable(msg.sender).transfer(balance);
    }

    receive() external payable {
    }

}