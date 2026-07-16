// SPDX-License-Identifier: UNKNOWN
pragma solidity 0.8.9;

import "./TiFiToken.sol";

interface IWETH {
    function deposit() external payable;

    function transfer(address to, uint256 value) external returns (bool);

    function withdraw(uint256) external;
}

interface IERC20 {
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
    event Transfer(address indexed from, address indexed to, uint256 value);

    function name() external view returns (string memory);

    function symbol() external view returns (string memory);

    function decimals() external view returns (uint8);

    function totalSupply() external view returns (uint256);

    function balanceOf(address owner) external view returns (uint256);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 value) external returns (bool);

    function transfer(address to, uint256 value) external returns (bool);

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) external returns (bool);
}

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor() {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _notEntered will be true
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }
}

/*
The Smart Contract offer TiFi Token Staking Feature of TiFi Bank
*/
contract TiFiReservior is ReentrancyGuard {
    struct Triple {
        uint256 TIFI;
        uint256 RT;
        uint256 WT;
    }
    uint256 public constant _GRANULARITY = 1e18;
    address public _owner;
    address public _feeReceiver;
    // Assign TiFi Token contract to variable
    TiFiToken private TIFI;
    address public WETH;

    // Deposit amount of each address: address => timestamp => (TIFI amount, RT amount)
    // RT = Reservior Token
    mapping(address => mapping(uint256 => Triple)) private depositAmount;
    // address => array of timestamps
    mapping(address => uint256[]) private deposits;

    // Total TiFi Token Amount deposited in this smart contract;
    uint256 public totalTiFiAmount;
    uint256 public total;
    uint256 public wTotal;

    uint256 public periodNoInterest;
    uint256 public periodFullInterest;
    uint256 public ratePartialInterest;
    uint256 public rateFee;

    uint256 public stakeFee;
    uint256 public stakeFeeRate;
    uint256 public stakeFeePool;
    uint256 public minDeposit;

    // Events
    event Deposit(address indexed user, uint256 amount);
    event Withdraw(address indexed user, uint256 amount);
    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    modifier onlyOwner() {
        require(_owner == msg.sender, "Ownable: caller is not the owner");
        _;
    }

    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(
            newOwner != address(0),
            "Ownable: new owner is the zero address"
        );
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    // Pass as constructor argument for deployed TiFi Token contract
    constructor(TiFiToken _TIFI, address _WETH) {
        TIFI = _TIFI;
        WETH = _WETH;
        _owner = msg.sender;
        _feeReceiver = msg.sender;
        periodNoInterest = 3600 * 24 * 30; // 30 days
        periodFullInterest = periodNoInterest * 6; // 180 days
        ratePartialInterest = _GRANULARITY / 2; // 50%
        rateFee = _GRANULARITY / 2; // 50%, based on the earning
        stakeFee = 2e16; // 0.02 BNB
        stakeFeeRate = _GRANULARITY / 2; // 50%
        minDeposit = 1e18; // 1 TIFI
    }

    // Get the RT rate based on TIFI
    function rtRate() public view returns (uint256) {
        require(total > 0, "TiFiReservior: NO_FUND");
        uint256 bal = TIFI.balanceOf(address(this));
        return
            (totalTiFiAmount *
                _GRANULARITY +
                (bal > totalTiFiAmount ? bal - totalTiFiAmount : 0) *
                (_GRANULARITY - rateFee)) / total;
    }

    // Get WETH/BNB Rate based on BNB Balance
    function ethRate() public view returns (uint256) {
        require(total > 0, "TiFiReservior: NO_FUND");
        return
            (_GRANULARITY *
                (IERC20(WETH).balanceOf(address(this)) - stakeFeePool)) /
            wTotal;
    }

    function deposit(uint256 _amount) external payable nonReentrant {
        // Should deposit a positive number
        require(_amount >= minDeposit, "TiFiReservior: DEPOSIT_AMOUNT_INVALID");
        require(msg.value >= stakeFee, "TiFiReservior: INSUFFICIENT_FEE");
        uint256 wAmount = wTotal == 0
            ? (stakeFee * (_GRANULARITY - stakeFeeRate)) / _GRANULARITY
            : (stakeFee * (_GRANULARITY - stakeFeeRate)) / ethRate();
        IWETH(WETH).deposit{value: stakeFee}();
        stakeFeePool += ((stakeFee * stakeFeeRate) / _GRANULARITY);

        uint256 rtAmount = total == 0
            ? _amount
            : (_amount * _GRANULARITY) / rtRate();
        total += rtAmount;
        totalTiFiAmount += _amount;
        wTotal += wAmount;
        uint256 ts = block.timestamp;
        Triple memory v = depositAmount[msg.sender][ts];
        depositAmount[msg.sender][ts] = Triple(
            _amount + v.TIFI,
            rtAmount + v.RT,
            wAmount + v.WT
        );
        TIFI.transferFrom(msg.sender, address(this), _amount);

        // Check if there are deposit already for this timestamp
        bool found = false;
        for (uint256 i = 0; i < deposits[msg.sender].length; i++) {
            if (deposits[msg.sender][i] == ts) {
                found = true;
                break;
            }
        }
        if (!found) {
            deposits[msg.sender].push(ts);
        }
        emit Deposit(msg.sender, _amount);
    }

    function withdraw(uint256 _amount, uint256 _timestamp)
        external
        nonReentrant
    {
        require(_amount > 0, "TiFiReservior: WITHDRAW_AMOUNT_INVALID");
        Triple memory p = depositAmount[msg.sender][_timestamp];
        // Should have enough balance in reservior
        require(_amount <= p.TIFI, "TiFiReservior: WITHDRAW_AMOUNT_TOO_HIGH");
        if (p.TIFI - _amount < minDeposit) {
            // If balance is less than minDeposit after withdraw, withdraw all.
            _amount = p.TIFI;
        }

        uint256 rtAmount = (_amount * p.RT) / p.TIFI;
        uint256 wAmount = (_amount * p.WT) / p.TIFI;
        depositAmount[msg.sender][_timestamp] = Triple(
            p.TIFI - _amount,
            p.RT > rtAmount ? p.RT - rtAmount : 0,
            p.WT > wAmount ? p.WT - wAmount : 0
        );
        uint256 full = (rtAmount * rtRate()) / _GRANULARITY;
        full = full > _amount ? full : _amount;
        uint256 tFee = ((full - _amount) * _GRANULARITY) /
            (_GRANULARITY - rateFee);
        uint256 eReward = (wAmount * ethRate()) / _GRANULARITY;
        uint256 fee = 0;
        if (block.timestamp >= _timestamp + periodFullInterest) {
            // Full Interest
            TIFI.transfer(msg.sender, full);
            if (IERC20(WETH).balanceOf(address(this)) >= eReward) {
                assert(IWETH(WETH).transfer(msg.sender, eReward));
            }
            if (tFee > full - _amount) {
                fee = tFee + _amount - full;
            }
        } else if (block.timestamp >= _timestamp + periodNoInterest) {
            // Partial Interest
            uint256 interest = ((full - _amount) * ratePartialInterest) /
                _GRANULARITY;
            uint256 toUser = interest + _amount;
            TIFI.transfer(msg.sender, toUser);
            fee = tFee - interest;
            stakeFeePool += (eReward / 2);
        } else {
            // No Interest
            TIFI.transfer(msg.sender, _amount);
            if (tFee > 0) {
                fee = tFee;
            }
            stakeFeePool += (eReward / 2);
        }
        uint256 curEthBal = IERC20(WETH).balanceOf(address(this));
        stakeFeePool = curEthBal < stakeFeePool ? curEthBal : stakeFeePool;
        if (stakeFeePool > 0) {
            assert(IWETH(WETH).transfer(_feeReceiver, stakeFeePool));
            stakeFeePool = 0;
        }
        totalTiFiAmount -= _amount;
        total -= rtAmount;
        wTotal -= wAmount;
        if (p.TIFI <= _amount) {
            // Balance is zero, then remove the record
            uint256[] storage dep = deposits[msg.sender];
            for (uint256 i = 0; i < dep.length; i++) {
                if (dep[i] == _timestamp) {
                    dep[i] = dep[dep.length - 1];
                    dep.pop();
                    break;
                }
            }
        }
        uint256 curBal = TIFI.balanceOf(address(this));
        if (curBal < totalTiFiAmount + fee) {
            fee = curBal > totalTiFiAmount ? curBal - totalTiFiAmount : 0;
        }
        if (fee > 0) {
            TIFI.transfer(_feeReceiver, fee);
        }
        emit Withdraw(msg.sender, _amount);
    }

    function getDepositRecords()
        public
        view
        returns (
            uint256[] memory,
            uint256[] memory,
            uint256[] memory,
            uint256[] memory
        )
    {
        uint256 len = deposits[msg.sender].length;
        uint256[] memory ts = new uint256[](len);
        uint256[] memory orig = new uint256[](len);
        uint256[] memory cur = new uint256[](len);
        uint256[] memory eth = new uint256[](len);
        uint256 rate = rtRate();
        uint256 eRate = ethRate();
        for (uint256 i = 0; i < len; i++) {
            uint256 t = deposits[msg.sender][i];
            Triple memory p = depositAmount[msg.sender][t];
            ts[i] = t;
            orig[i] = p.TIFI;
            cur[i] = (p.RT * rate) / _GRANULARITY;
            eth[i] = (p.WT * eRate) / _GRANULARITY;
        }
        return (ts, orig, cur, eth);
    }

    function setPeriodNoInterest(uint256 period) public onlyOwner {
        require(
            period < periodFullInterest,
            "TiFiReservior: INVALID_TIME_PERIOD"
        );
        periodNoInterest = period;
    }

    function setPeriodFullInterest(uint256 period) public onlyOwner {
        require(
            period > periodNoInterest,
            "TiFiReservior: INVALID_TIME_PERIOD"
        );
        periodFullInterest = period;
    }

    function setRatePartialInterest(uint256 rate) public onlyOwner {
        require(rate <= _GRANULARITY, "TiFiReservior: INVALID_RATE");
        ratePartialInterest = rate;
    }

    function setFeeRate(uint256 rate) public onlyOwner {
        require(rate < _GRANULARITY, "TiFiReservior: INVALID_RATE");
        rateFee = rate;
    }

    function setFeeReceiver(address receiver) public onlyOwner {
        require(
            receiver != _feeReceiver,
            "TiFiReservior: INVALID_FEE_RECEIVER"
        );
        _feeReceiver = receiver;
    }

    function setStakeFee(uint256 fee) public onlyOwner {
        stakeFee = fee;
    }

    function setStateFeeRate(uint256 rate) public onlyOwner {
        require(rate <= _GRANULARITY, "TiFiReservior: INVALID_RATE");
        stakeFeeRate = rate;
    }

    function setMinDeposit(uint256 amount) public onlyOwner {
        require(amount > 0, "TiFiReservior: INVALID_AMOUNT");
        minDeposit = amount;
    }
}
