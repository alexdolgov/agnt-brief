//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "./interfaces/IOwnedDistributor.sol";
import "./interfaces/IWETH.sol";

contract LiquidityGeneratorV2 is OwnableUpgradeable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    struct ConstuctorParams {
        address token_;
        address depositToken_;
        address distributor_;
        address bonusDistributor_;
        uint256 periodBegin_;
        uint256 periodDuration_;
        uint256 bonusDuration_;
        uint256 minimumAmount_;
        bool isNative_;
    }

    address public token;
    address public depositToken;
    address public distributor;
    address public bonusDistributor;
    uint256 public periodBegin;
    uint256 public periodEnd;
    uint256 public bonusEnd;
    uint256 public minimumAmount;
    bool public isNative;

    event Deposit(
        address indexed sender,
        uint256 amount,
        uint256 distributorTotalShares,
        uint256 bonusDistributorTotalShares,
        uint256 newShares,
        uint256 newBonusShares
    );

    function initialize(ConstuctorParams memory params_) external initializer {
        require(
            params_.periodDuration_ > 0,
            "LiquidityGenerator: INVALID_PERIOD_DURATION"
        );
        require(
            params_.bonusDuration_ > 0 &&
                params_.bonusDuration_ <= params_.periodDuration_,
            "LiquidityGenerator: INVALID_BONUS_DURATION"
        );

        __Ownable_init();

        token = params_.token_;
        depositToken = params_.depositToken_;
        distributor = params_.distributor_;
        bonusDistributor = params_.bonusDistributor_;
        periodBegin = params_.periodBegin_;
        periodEnd = params_.periodBegin_.add(params_.periodDuration_);
        bonusEnd = params_.periodBegin_.add(params_.bonusDuration_);
        minimumAmount = params_.minimumAmount_;
        isNative = params_.isNative_;
    }

    function setPeriodBegin(uint256 _periodBegin, uint256 periodDuration_, uint256 bonusDuration_) external onlyOwner {
        periodBegin = _periodBegin;
        periodEnd = periodBegin + periodDuration_;
        bonusEnd = periodBegin + bonusDuration_;
    }

    function setMinimumAmount(uint256 _minimumAmount) external onlyOwner {
        minimumAmount = _minimumAmount;
    }

    function distributorTotalShares()
        public
        view
        returns (uint256 totalShares)
    {
        return IOwnedDistributor(distributor).totalShares();
    }

    function bonusDistributorTotalShares()
        public
        view
        returns (uint256 totalShares)
    {
        return IOwnedDistributor(bonusDistributor).totalShares();
    }

    function distributorRecipients(
        address account
    )
        public
        view
        returns (uint256 shares, uint256 lastShareIndex, uint256 credit)
    {
        return IOwnedDistributor(distributor).recipients(account);
    }

    function bonusDistributorRecipients(
        address account
    )
        public
        view
        returns (uint256 shares, uint256 lastShareIndex, uint256 credit)
    {
        return IOwnedDistributor(bonusDistributor).recipients(account);
    }

    function deposit(uint256 _amount) public payable {
        uint256 blockTimestamp = getBlockTimestamp();
        require(blockTimestamp >= periodBegin, "LiquidityGenerator: TOO_SOON");
        require(blockTimestamp < periodEnd, "LiquidityGenerator: TOO_LATE");

        if (_amount > 0) {
            IERC20(depositToken).safeTransferFrom(
                msg.sender,
                address(this),
                _amount
            );
        }

        if (isNative && msg.value > 0) {
            _amount += msg.value;
            IWETH(depositToken).deposit{value: msg.value}();
        }
        require(_amount >= minimumAmount, "LiquidityGenerator: INVALID_VALUE");

        (uint256 _prevSharesBonus, , ) = IOwnedDistributor(bonusDistributor)
            .recipients(msg.sender);
        uint256 _newSharesBonus = _prevSharesBonus;
        if (blockTimestamp < bonusEnd) {
            _newSharesBonus = _prevSharesBonus.add(_amount);
            IOwnedDistributor(bonusDistributor).editRecipient(
                msg.sender,
                _newSharesBonus
            );
        }
        (uint256 _prevShares, , ) = IOwnedDistributor(distributor).recipients(
            msg.sender
        );
        uint256 _newShares = _prevShares.add(_amount);
        IOwnedDistributor(distributor).editRecipient(msg.sender, _newShares);
        emit Deposit(
            msg.sender,
            _amount,
            distributorTotalShares(),
            bonusDistributorTotalShares(),
            _newShares,
            _newSharesBonus
        );
    }

    receive() external payable {
        deposit(msg.value);
    }

    function getBlockTimestamp() public view virtual returns (uint256) {
        return block.timestamp;
    }

    function withdraw(address _token) external onlyOwner {
        IERC20(_token).transfer(
            msg.sender,
            IERC20(_token).balanceOf(address(this))
        );
    }
}
