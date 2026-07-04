// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "./interfaces/ILGE.sol";
import "./interfaces/IUniswapV2Router02.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

error LGE__WrongInput();
error LGE__UnknownToken();
error LGE__Unauthorized();
error LGE__NotLive();
error LGE__Completed();
error LGE__GracePeriodNotComplete();
error LGE__DoesNotOwn();
error LGE__NotWhitelisted();
error LGE__Slippage();
error LGE__ExceedsRaiseCap();

/// Harbor Liquidity Generation Event.
contract HarborLGE is ILGE, Ownable {
    using SafeERC20 for IERC20;

    uint256 public constant USDT_RAISE_CAP = 1000000 ether; // Capped at 1,000,000 USDT (USDT is 18 decimals on BSC)
    uint256 public constant ETHER = 1 ether;
    uint256 public constant LGE_PERIOD = 14 days;
    uint256 public constant GRACE_PERIOD = 90 days;
    uint256 public constant VESTING_PERIOD = 90 days;
    uint256 public constant PERCENT_DIVISOR = 1e27;
    uint256 public constant HARBOR_PRICE = 4e17; // price in USDT

    IERC20 public immutable hbr;
    address public immutable unirouter;
    address public immutable treasury;
    mapping(address => address[]) public pathToUsdt;
    IERC20 public immutable usdt;
    uint256 public immutable lgeStart;
    uint256 public immutable lgeEnd; // 2 weeks after LGE start
    bool public gracePeriodOver;
    address[] public supportedTokens;
    address public nativeTokenGateway;

    /// Information related to user buying in the LGE
    /// usdtValue - How much user contributed in USDT
    /// totalClaimed - how much a user has already claimed
    struct UserShare {
        uint256 usdtValue;
        uint256 totalClaimed;
    }
    mapping (address => UserShare) public userShares;

    uint256 public totalRaisedUsdt; // total amount raised in USDT
    uint256 public hbrBought; // amount of harbor bought at $0.40

    constructor(address _hbr, address _usdt, address _unirouter, address _treasury, uint256 _lgeStart) {
        hbr = IERC20(_hbr);
        usdt = IERC20(_usdt);
        unirouter = _unirouter;
        treasury = _treasury;
        lgeStart = _lgeStart;
        lgeEnd = lgeStart + LGE_PERIOD;
        supportedTokens.push(_usdt);
    }

    ///----- * PUBLIC WRITE FUNCTIONS * -----///

    /// @notice Allows a user to buy a share of the Harbor LGE using {amount} of {token}
    function buy(address token, uint256 amount, uint256 minUsdtAmountOut, address onBehalfOf) public returns (uint256 usdtValue) {
        /// Check for errors
        if (block.timestamp < lgeStart) {
            revert LGE__NotLive();
        }
        if (onBehalfOf != msg.sender && msg.sender != nativeTokenGateway) {
            revert LGE__Unauthorized();
        }
        if (block.timestamp > lgeEnd) {
            revert LGE__Completed();
        }
        if (token != address(usdt) && pathToUsdt[token].length < 2) {
            revert LGE__UnknownToken();
        }
        if (amount == 0) {
            revert LGE__WrongInput();
        }

        /// Fetch tokens, turn into USDT if necessary
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        if (token == address(usdt)) {
            usdtValue = amount;
        } else {
            usdtValue = _swapTokenToUsdt(token, amount);
            if (usdtValue < minUsdtAmountOut) revert LGE__Slippage();
        }

        // Reverts if amount exceeds raise cap
        if ((totalRaisedUsdt + usdtValue) > USDT_RAISE_CAP) {
            revert LGE__ExceedsRaiseCap();
        }

        /// Store values needed to calculate the user's share after the LGE's end
        userShares[onBehalfOf].usdtValue += usdtValue;

        totalRaisedUsdt += usdtValue;
        hbrBought += usdtValue * ETHER / HARBOR_PRICE; // accounts for Harbor bought

        /// Transfer usdt to treasury
        /// Sending the whole balance should there be leftovers
        usdt.safeTransfer(treasury, usdt.balanceOf(address(this)));
        emit Buy(onBehalfOf, token, amount);
    }

    /// @notice Allows a user to claim all the tokens he can according to their share and the vesting duration
    function claim() external returns (uint256 claimable) {
        if (gracePeriodOver == false) {
            revert LGE__GracePeriodNotComplete();
        }
        claimable = pending(msg.sender);
        if (claimable != 0) {
            userShares[msg.sender].totalClaimed += claimable;
            hbr.safeTransfer(msg.sender, claimable);
        }

        emit Claim(msg.sender, claimable);
    }

    ///----- * PUBLIC READ FUNCTIONS * -----///

    /// @notice Get how much HBR a user can claim
    function pending(address user) public view returns (uint256 claimable) {
        if (block.timestamp < lgeEnd + GRACE_PERIOD) {
            revert LGE__GracePeriodNotComplete();
        }
        uint256 timeSinceGracePeriodEnd = block.timestamp - (lgeEnd + GRACE_PERIOD);
        if (timeSinceGracePeriodEnd > VESTING_PERIOD) {
            timeSinceGracePeriodEnd = VESTING_PERIOD;
        }

        claimable = (totalOwed(user) * timeSinceGracePeriodEnd / VESTING_PERIOD) - userShares[user].totalClaimed;
    }

    /// @notice Get how much HBR a user is owed by the end of their vesting
    function totalOwed(address user) public view returns (uint256 userTotal) {
        uint256 shareOfLge = _userUsdtContribution(user) * PERCENT_DIVISOR / totalRaisedUsdt;
        userTotal = (shareOfLge * hbrBought) / PERCENT_DIVISOR;
    }

    /// @notice Get how much HBR a user has yet to receive
    function userHbrLeft(address user) public view returns (uint256 hbrLeft) {
        hbrLeft = totalOwed(user) - userShares[user].totalClaimed;
    }

    /// @notice Get list of suported tokens to buy with
    function getSupportedTokens() public view returns (address[] memory) {
        return supportedTokens;
    }

    function getSupportedTokensLength() public view returns (uint256 length) {
        length = supportedTokens.length;
    }

    ///----- * INTERNAL FUNCTIONS * -----///

    /// Swap tokens using a uniV2 protocol and router
    function _swapTokenToUsdt(address token, uint256 amount) internal returns (uint256 usdtValue) {
        if (amount == 0) {
            return 0;
        }

        uint256 usdtBalBefore = usdt.balanceOf(address(this));

        IERC20(token).safeIncreaseAllowance(unirouter, amount);
        IUniswapV2Router02(unirouter).swapExactTokensForTokens(
            amount,
            0,
            pathToUsdt[token],
            address(this),
            block.timestamp
        );
        usdtValue = usdt.balanceOf(address(this)) - usdtBalBefore;
    }

    /// Returns user's USDT contributed
    function _userUsdtContribution(address user) internal view returns (uint256 userTotalUsdt) {
        userTotalUsdt = userShares[user].usdtValue;
    }

    ///----- * ADMIN FUNCTIONS * -----///

    /// @notice Set how many HBR are to be distributed across the participants
    function finalizeLGE() external onlyOwner {
        if (block.timestamp <= lgeEnd + GRACE_PERIOD) {
            revert LGE__GracePeriodNotComplete();
        }

        /// Fetch the tokens to guarantee the amount received
        hbr.safeTransferFrom(msg.sender, address(this), hbrBought);

        gracePeriodOver = true;
    }

    /// @notice Add a token to the list of tokens that can be swapped, or update one's path
    function setPathToUsdt(address[] memory _path) external onlyOwner {
        if (block.timestamp > lgeEnd) {
            revert LGE__Completed();
        }
        if (_path[_path.length-1] != address(usdt)) {
            revert LGE__WrongInput();
        }
        pathToUsdt[_path[0]] = _path;

        bool containsToken;
        for (uint256 i; i < supportedTokens.length; i++) {
            if (supportedTokens[i] == _path[0]) {
                containsToken = true;
            }
        }

        if (containsToken == false) {
            supportedTokens.push(_path[0]);
        }
    }

    function setNativeTokenGateway(address gateway) external onlyOwner {
        if (block.timestamp > lgeEnd) {
            revert LGE__Completed();
        }
        if (gateway == address(0)) {
            revert LGE__WrongInput();
        }

        nativeTokenGateway = gateway;
    }
}