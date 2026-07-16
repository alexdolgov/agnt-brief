// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {VaultBase} from "./interfaces/VaultBase.sol";
import {AccessControlUpgradeable} from "@openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {Initializable} from "@openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {IPortalTradeV2} from "./interfaces/IPortal.sol";
import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {Strings} from "@openzeppelin/utils/Strings.sol";

interface ITaxToken {
    function taxRate() external view returns (uint256);
}

contract SnowBallVault is VaultBase, AccessControlUpgradeable {
    using SafeERC20 for IERC20;
    using Strings for uint256;
    using Strings for address;

    /// @notice The type of balance update
    enum BalanceUpdateType {
        ACCUMULATION,
        SNOWBALL
    }

    struct VaultStats {
        uint128 totalBNBSpent;
        uint128 totalTokenBurn;
    }

    VaultStats public stats;

    bytes32 public constant SNOWBALL_ROLE = keccak256("SNOWBALL_ROLE");
    address public constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    address public taxToken;
    address public quoteToken;
    address public snowBallFeeRecipient;
    uint256 public createdAt;
    address public factory;
    uint256 public taxRateBps;

    event FlapSnowballBalanceUpdated(address token, address vault, uint256 newBalance, BalanceUpdateType updateType);
    event SnowBallFeePaid(address token, address recipient, uint256 amount);

    error CannotRevokeGuardianRole();
    error FeeTransferFailed();

    /// @notice Constructor to disable initializers on the implementation contract
    constructor() {
        _disableInitializers();
    }

    function initialize(address _taxToken, address _quoteToken, address _snowBallFeeRecipient) external initializer {
        __AccessControl_init();

        taxToken = _taxToken;
        quoteToken = _quoteToken;
        snowBallFeeRecipient = _snowBallFeeRecipient;
        createdAt = block.timestamp;
        factory = msg.sender;

        address guardian = _getGuardian();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(DEFAULT_ADMIN_ROLE, guardian);

        _grantRole(SNOWBALL_ROLE, msg.sender);
        _grantRole(SNOWBALL_ROLE, guardian);
    }

    receive() external payable {
        if (msg.value == 0) return;
        
        // If sender is portal, this is likely a refund from snowball - do nothing
        if (msg.sender == _getPortal()) return;

        if (taxRateBps == 0) {
            try ITaxToken(taxToken).taxRate() returns (uint256 _taxRate) {
                if (_taxRate > 0) {
                    taxRateBps = _taxRate;
                }
            } catch {
                // If fetch fails, taxRate remains 0
            }
        }

        uint256 fee = 0;
        // 1% = 100 bps
        if (taxRateBps <= 100) {
            // 6% of msg.value if taxRate <= 1%
            // effectively: around 0.06% of msg.value if taxRate == 1%
            fee = msg.value * 600 / 10000;
        } else {
            // ratio =  6 / taxRateBps
            // fee = msg.value * ratio
            //
            // Examples:
            //   1% taxRateBps = 100 -> fee =  msg.value * 6 / 100 = 6%
            //   2% taxRateBps = 200 -> fee =  msg.value * 6 / 200 = 3%
            //   3% taxRateBps = 300 -> fee =  msg.value * 6 / 300 = 2%
            //  10% taxRateBps = 1000 -> fee = msg.value * 6 / 1000 = 0.6%
            fee = (msg.value * 6) / taxRateBps;
        }

        if (fee > 0) {
            (bool success,) = snowBallFeeRecipient.call{value: fee}("");
            if (success) {
                emit SnowBallFeePaid(taxToken, snowBallFeeRecipient, fee);
            } else {
                // leave the fee in the vault if transfer fails
            }
        }

        emit FlapSnowballBalanceUpdated(taxToken, address(this), address(this).balance, BalanceUpdateType.ACCUMULATION);
    }

    function snowball(uint256 quoteAmt) external onlyRole(SNOWBALL_ROLE) {
        if (address(this).balance < quoteAmt) {
            return;
        }

        address portal = _getPortal();
        uint256 balanceBefore = address(this).balance;
        
        IPortalTradeV2.ExactInputParams memory params = IPortalTradeV2.ExactInputParams({
            inputToken: address(0), // BNB
            outputToken: taxToken,
            inputAmount: quoteAmt,
            minOutputAmount: 0,
            permitData: ""
        });

        uint256 tokensReceived = IPortalTradeV2(portal).swapExactInput{value: quoteAmt}(params);
        
        uint256 balanceAfter = address(this).balance;
        uint256 actualAmountSpent = balanceBefore - balanceAfter;

        stats.totalBNBSpent += uint128(actualAmountSpent);
        stats.totalTokenBurn += uint128(tokensReceived);

        IERC20(taxToken).safeTransfer(DEAD_ADDRESS, tokensReceived);

        emit FlapSnowballBalanceUpdated(taxToken, address(this), address(this).balance, BalanceUpdateType.SNOWBALL);
    }

    function description() public view override returns (string memory) {
        string memory symbol = _getTokenSymbol();
        return string(
            abi.encodePacked(
                "Flap SnowBall Vault for $",
                symbol,
                ", fees contribute to SnowBall mechanism",
                ", total BNB spent: ",
                _formatAmount(stats.totalBNBSpent),
                ", total ",
                symbol,
                " burned: ",
                _formatAmount(stats.totalTokenBurn)
            )
        );
    }

    function _formatAmount(uint256 amount) internal pure returns (string memory) {
        if (amount == 0) {
            return "0";
        }

        if (amount < 1e14) {
            return "< 0.0001";
        }

        uint256 integerPart = amount / 1e18;
        uint256 decimalPart = (amount % 1e18) / 1e14;

        string memory decimalStr = decimalPart.toString();

        if (bytes(decimalStr).length < 4) {
            string memory padding = "";
            uint256 missing = 4 - bytes(decimalStr).length;
            for (uint256 i = 0; i < missing; i++) {
                padding = string.concat(padding, "0");
            }
            decimalStr = string.concat(padding, decimalStr);
        }

        return string.concat(integerPart.toString(), ".", decimalStr);
    }

    function _getTokenSymbol() internal view returns (string memory) {
        (bool success, bytes memory result) = taxToken.staticcall(abi.encodeWithSignature("symbol()"));
        if (success && result.length > 0) {
            return abi.decode(result, (string));
        }
        return "UNKNOWN";
    }

    function revokeRole(bytes32 role, address account) public override onlyRole(getRoleAdmin(role)) {
        address guardian = _getGuardian();
        if (account == guardian) {
            revert CannotRevokeGuardianRole();
        }
        super.revokeRole(role, account);
    }
}
