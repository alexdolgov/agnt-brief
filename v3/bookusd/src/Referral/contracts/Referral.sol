// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./interfaces/IMintStakeShare.sol";
import "./interfaces/IStaking.sol";
import "./interfaces/IMSSNFT.sol";
import "./interfaces/ISwapper.sol";
import "./interfaces/IUniswapV2Router.sol";
import "./interfaces/IUniswapV2Pair.sol";
import "./interfaces/IUniswapV2Factory.sol";

interface IAxelarGasService {
    function payNativeGasForContractCall(
        address _contract,
        string calldata _destinationChain,
        string calldata _destinationAddress,
        bytes calldata _payload,
        address _refundAddress
    ) external payable;
}

interface IAxelarGateway {
    function callContract(
        string calldata destinationChain,
        string calldata contractAddress,
        bytes calldata payload
    ) external;
}

contract Referral is Initializable, OwnableUpgradeable {
    // Update to include only needed fields
    struct User {
        address upline;
        uint256 referrals;
        uint256 total_structure;
        uint256 referral_revenue;
        uint256 referrals_paid;
        uint256 mss_referrals;
        uint256 paid_until;
        uint256 tier;
    }

    mapping(address => User) public users;

    uint8[] public ref_bonuses; // 1 => 1%
    uint8[] public mss_bonuses; // 1 => 1%

    uint256[] public tiers;

    uint256 private immutable ONE_MONTH = 30 days;

    IERC20 public usdt;
    IMintStakeShare public mss;
    IMSSNFT public nft;
    IStaking public stakingContract;
    address public swapContract;
    address public admin;

    uint256 public totalMssBurned;
    uint256 public totalBnbReferrals;
    uint256 public totalUsdtReferrals;

    IUniswapV2Router02 public uniswapV2Router;
    address public uniswapV2Pair;
    address public WETH;

    IAxelarGasService public gasService;
    address public baseReferralAddress;
    IAxelarGateway public gateway;

    mapping(address => bool) public baseUpdated;

    event Upline(address indexed addr, address indexed upline);
    event NftPurchase(address indexed addr, uint256 tier, uint256 months);
    event NftChange(address indexed addr, uint256 newTier, uint256 oldTier);
    event MssBurned(uint256 amount);
    // event NewDeposit(address indexed addr, uint256 amount);
    // event DirectPayout(address indexed addr, address indexed from, uint256 amount);
    event RefPayout(address indexed addr, address indexed from, uint256 amount);
    event MssReferral(address indexed addr, address indexed from, uint256 amount);
    // event PoolPayout(address indexed addr, uint256 amount);
    event Withdraw(address indexed addr, uint256 amount);

    // event LimitReached(address indexed addr, uint256 amount);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address initialOwner,
        address _nft,
        address _usdt,
        address _mss,
        address _staking,
        address _swapContract
    ) public initializer {
        __Ownable_init(initialOwner);

        if (_usdt != address(0)) {
            usdt = IERC20(_usdt);
        }
        if (_mss != address(0)) {
            mss = IMintStakeShare(_mss);
        }
        if (_nft != address(0)) {
            nft = IMSSNFT(_nft);
        }
        if (_staking != address(0)) {
            stakingContract = IStaking(_staking);
        }
        if (_swapContract != address(0)) {
            swapContract = _swapContract;
        }

        admin = initialOwner;

        ref_bonuses.push(10);
        ref_bonuses.push(8);
        ref_bonuses.push(6);
        ref_bonuses.push(4);
        ref_bonuses.push(2);

        mss_bonuses.push(5);
        mss_bonuses.push(4);
        mss_bonuses.push(3);
        mss_bonuses.push(2);
        mss_bonuses.push(1);

        tiers.push(25 ether); // tier 0 cost 25 USDT
        tiers.push(50 ether);
        tiers.push(100 ether);
        tiers.push(150 ether);
        tiers.push(200 ether);
    }

    function setRouter(address _router) public onlyOwner {
        uniswapV2Router = IUniswapV2Router02(_router);

        uniswapV2Pair = IUniswapV2Factory(uniswapV2Router.factory()).getPair(address(mss), uniswapV2Router.WETH());

        WETH = uniswapV2Router.WETH();

        _approveTokenIfNeeded(address(usdt), address(uniswapV2Router));
    }

    function setGasService(address _gasService) public onlyOwner {
        gasService = IAxelarGasService(_gasService);
    }

    function setGateway(address _gateway) public onlyOwner {
        gateway = IAxelarGateway(_gateway);
    }

    function setBaseAddress(address _baseReferralAddress) public onlyOwner {
        baseReferralAddress = _baseReferralAddress;
    }

    function setAddresses(
        address _nft,
        address _usdt,
        address _mss,
        address _staking,
        address _swapContract
    ) public onlyOwner {
        if (_usdt != address(0)) {
            usdt = IERC20(_usdt);
        }
        if (_mss != address(0)) {
            mss = IMintStakeShare(_mss);
        }
        if (_nft != address(0)) {
            nft = IMSSNFT(_nft);
        }
        if (_staking != address(0)) {
            stakingContract = IStaking(_staking);
        }
        if (_swapContract != address(0)) {
            swapContract = _swapContract;
        }
    }

    function _setUpline(address _addr, address _upline) private {
        if (users[_addr].upline == address(0)) {
            if (address(swapContract) != address(0)) {
                address _mssUpline = _getUplineFromMSS(_addr);

                if (_mssUpline != address(0)) {
                    _upline = _mssUpline;
                }
            }
            if (_addr == _upline || _upline == address(0)) {
                return;
            }

            users[_addr].upline = _upline;

            users[_upline].referrals++;

            emit Upline(_addr, _upline);

            for (uint8 i = 0; i < ref_bonuses.length; i++) {
                if (_upline == address(0)) break;

                users[_upline].total_structure++;

                _upline = users[_upline].upline;
            }
        }
    }

    function _getUplineFromMSS(address _addr) internal view returns (address upline_) {
        address swapReferrer = ISwapper(swapContract).referrers(_addr);

        address stakeReferrer = IStaking(stakingContract).userInfo(_addr).referrer;

        if (swapReferrer != address(0)) {
            upline_ = swapReferrer;
        } else if (stakeReferrer != address(0)) {
            upline_ = stakeReferrer;
        } else {
            upline_ = address(0);
        }
    }

    function _refPayout(address _addr, uint256 _amount) private {
        address up = users[_addr].upline;

        for (uint8 i = 0; i < ref_bonuses.length; i++) {
            // if (up == address(0)) continue;
            uint256 bonus = (_amount * ref_bonuses[i]) / 100;

            if (users[up].tier >= i && users[up].paid_until >= block.timestamp) {
                users[up].referral_revenue += bonus;
                emit RefPayout(up, _addr, bonus);
            } else {
                users[admin].referral_revenue += bonus;
            }

            up = users[up].upline;
            totalUsdtReferrals += bonus;
        }
    }

    function handleMssReferral(address _addr, address _upline) public payable {
        require(msg.sender == swapContract || msg.sender == admin, "Not authorized");
        uint256 _amount = msg.value;

        if (users[_addr].upline == address(0)) {
            _setUpline(_addr, _upline);
        }

        address up = users[_addr].upline;

        uint256 adminFee = 0;

        uint256 totalMssReferrals = 0;
        for (uint8 i = 0; i < mss_bonuses.length; i++) {
            totalMssReferrals += mss_bonuses[i];
        }

        for (uint8 i = 0; i < mss_bonuses.length; i++) {
            uint256 bonus = (_amount * mss_bonuses[i]) / totalMssReferrals;

            // TODO: Break out of the loop if up is _addr or if up is called twice
            if (users[up].tier >= i && users[up].paid_until >= block.timestamp && up != _addr) {
                // Qualfies for bonus
                payable(up).transfer(bonus);
                users[up].mss_referrals += bonus;

                emit MssReferral(up, _addr, bonus);
            } else {
                adminFee += bonus;
            }
            up = users[up].upline;
        }

        if (adminFee > 0) {
            payable(admin).transfer(adminFee);
            users[admin].mss_referrals += adminFee;
        }
        totalBnbReferrals += _amount;
    }

    function availableRewards(address _addr) public view returns (uint256) {
        return users[_addr].referral_revenue - users[_addr].referrals_paid;
    }

    function claim() public {
        User storage user = users[msg.sender];

        // Require user to have paid for the subscription
        require(user.paid_until > 0 || msg.sender == admin, "Not a user");

        require(user.paid_until >= block.timestamp || msg.sender == admin, "Expired");

        uint256 amount = availableRewards(msg.sender);

        require(amount > 0, "Nothing to claim");

        user.referrals_paid += amount;

        if (usdt != IERC20(address(0))) {
            require(usdt.transfer(msg.sender, amount), "Could not transfer USDT");
        }

        emit Withdraw(msg.sender, amount);
    }

    function buy(uint256 _tier, address _upline, uint256 _months) public payable {
        require(_tier < tiers.length, "Invalid tier");

        require(_months > 0, "Invalid months");

        uint256 _cost = tiers[_tier] * _months;

        if (usdt != IERC20(address(0))) {
            require(usdt.transferFrom(msg.sender, address(this), _cost), "Could not transfer USDT");
        }

        User storage user = users[msg.sender];

        // If it is a new user, setup the subscription
        if (user.paid_until == 0) {
            user.paid_until = block.timestamp + _months * ONE_MONTH;
            user.tier = _tier;
            _setUpline(msg.sender, _upline);
            _sendNft(msg.sender);
        } else {
            // This is not an existing user

            // Must change tiers in separate function
            require(user.tier == _tier, "Invalid tier");

            if (user.paid_until < block.timestamp) {
                // User has expired, renew
                user.paid_until = block.timestamp + _months * ONE_MONTH;
            } else {
                // User is still active, extend
                user.paid_until += _months * ONE_MONTH;
            }
        }

        emit NftPurchase(msg.sender, _tier, _months);

        require(user.upline != address(0), "No upline");

        baseUpdated[msg.sender] = false;

        _refPayout(msg.sender, _cost);
        _buyAndBurn((_cost * 70) / 100);

        // if (msg.value > 0.001 ether) {
        //     _sendOneToBase(msg.sender, user.paid_until, user.tier);
        // }
    }

    struct UserStatus {
        address user;
        uint256 paid_until;
        uint256 tier;
    }

    function _sendOneToBase(address _user, uint256 _paid_until, uint256 _tier) internal {
        UserStatus[] memory _userStatus = new UserStatus[](1);
        _userStatus[0].user = _user;
        _userStatus[0].paid_until = _paid_until;
        _userStatus[0].tier = _tier;
        baseUpdated[_user] = true;
        _sendToBase(_userStatus);
    }

    function _sendToBase(UserStatus[] memory _userStatus) internal {
        require(msg.value > 0, "Gas payment is required");
        bytes memory payload = abi.encode(_userStatus);
        gasService.payNativeGasForContractCall{ value: msg.value }(
            address(this),
            "base",
            "0xBCc2A1CC1f2E6c6B704DC7d2EF6fc94eeA648251",
            payload,
            msg.sender
        );
        gateway.callContract("base", "0xBCc2A1CC1f2E6c6B704DC7d2EF6fc94eeA648251", payload);
    }

    function userUpdateBase() public payable {
        User storage user = users[msg.sender];

        require(user.paid_until > block.timestamp, "Not an active user");
        require(msg.value > 0, "Gas payment is required");

        UserStatus[] memory _userStatus = new UserStatus[](1);
        _userStatus[0].user = msg.sender;
        _userStatus[0].paid_until = user.paid_until;
        _userStatus[0].tier = user.tier;

        baseUpdated[msg.sender] = true;
        _sendToBase(_userStatus);
    }

    function sendToBase(address[] memory _users) public payable onlyOwner {
        UserStatus[] memory _userStatus = new UserStatus[](_users.length);
        for (uint256 i = 0; i < _users.length; i++) {
            _userStatus[i].user = _users[i];
            _userStatus[i].paid_until = users[_users[i]].paid_until;
            _userStatus[i].tier = users[_users[i]].tier;
            baseUpdated[_users[i]] = true;
        }
        _sendToBase(_userStatus);
    }

    function updateTier(uint256 _tier) public payable {
        User storage user = users[msg.sender];

        require(user.paid_until > block.timestamp, "Not an active user");
        require(_tier < tiers.length, "Invalid tier");
        require(_tier != user.tier, "Same tier");

        uint256 oldCost = tiers[user.tier];
        uint256 newCost = tiers[_tier];

        uint256 timeRemaining = user.paid_until - block.timestamp;

        timeRemaining = (timeRemaining * oldCost) / newCost;

        user.paid_until = block.timestamp + (timeRemaining);
        user.tier = _tier;

        // if (msg.value > 0.001 ether) {
        //     _sendOneToBase(msg.sender, user.paid_until, user.tier);
        // }

        emit NftChange(msg.sender, _tier, user.tier);
        baseUpdated[msg.sender] = false;
    }

    function _sendNft(address _addr) private {
        if (nft != IMSSNFT(address(0))) {
            if (nft.balanceOf(_addr) == 0) {
                nft.safeMint(_addr);
            }
        }
    }

    function _swap(
        address tokenOut,
        uint256 tokenAmountOutMin,
        address tokenIn,
        uint256 tokenInAmount,
        address _to
    ) internal {
        uint256 wethAmount;

        wethAmount = tokenInAmount;

        address[] memory basePath;

        basePath = new address[](3);
        basePath[0] = tokenIn;
        basePath[1] = WETH;
        basePath[2] = tokenOut;

        uniswapV2Router.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            wethAmount,
            tokenAmountOutMin,
            basePath,
            _to,
            block.timestamp
        );
    }

    function _approveTokenIfNeeded(address token, address spender) private {
        if (IERC20(token).allowance(address(this), spender) == 0) {
            IERC20(token).approve(spender, type(uint256).max);
        }
    }

    function _buyAndBurn(uint256 amount) internal {
        _swap(address(mss), 0, address(usdt), amount, address(this));
        uint256 forDead = IERC20(address(mss)).balanceOf(address(this));
        IMintStakeShare(mss).transfer(address(0xdead), forDead);

        totalMssBurned += forDead;
        emit MssBurned(forDead);
    }
}
