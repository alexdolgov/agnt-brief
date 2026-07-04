// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { SendParam, MessagingFee, MessagingReceipt, OFTReceipt, IOFT } from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import { OFTCoreUpgradeable } from "@layerzerolabs/oft-evm-upgradeable/contracts/oft/OFTCoreUpgradeable.sol";
import { OFTUpgradeable } from "@layerzerolabs/oft-evm-upgradeable/contracts/oft/OFTUpgradeable.sol";

import { IERC20 } from "@oz/interfaces/IERC20.sol";
import { SafeERC20 } from "@oz/token/ERC20/utils/SafeERC20.sol";
import { EnumerableMap } from "@oz/utils/structs/EnumerableMap.sol";
import { AccessControlEnumerableUpgradeable } from "@oz-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";
import { UUPSUpgradeable } from "@oz-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { PausableUpgradeable } from "@oz-upgradeable/utils/PausableUpgradeable.sol";

import { IToken } from "./interfaces/IToken.sol";
import { TokenStorage as Storage } from "./storage/TokenStorage.sol";
import { BurnRequest } from "./types/Types.sol";

/// @title Token
/// @notice ERC20 token contract used for purchasing via TrancheManager and staking via StakingPool contracts
contract Token is
    IToken,
    UUPSUpgradeable,
    PausableUpgradeable,
    OFTUpgradeable,
    AccessControlEnumerableUpgradeable
{
    using EnumerableMap for EnumerableMap.AddressToUintMap;
    using SafeERC20 for IERC20;

    /// @dev role which can execute burns
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    /// @dev role which can mint tokens
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /// @dev role which can upgrade
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");

    /// @dev address of the swappable token
    /// @dev this may be the zero address if the swappable token does not exist on the src chain
    address public immutable SWAPPABLE_TOKEN;

    constructor(
        address swappableToken,
        address lzEndpoint
    ) OFTUpgradeable(lzEndpoint) {
        _disableInitializers();

        SWAPPABLE_TOKEN = swappableToken;
    }

    /// @inheritdoc UUPSUpgradeable
    function _authorizeUpgrade(
        address
    ) internal override onlyRole(UPGRADER_ROLE) {}

    /// @inheritdoc IToken
    function __Token_init(
        address initialOwner,
        string calldata name,
        string calldata symbol
    ) external initializer {
        __Ownable_init(initialOwner);
        __Pausable_init();
        __OFT_init(name, symbol, initialOwner);
        _grantRole(DEFAULT_ADMIN_ROLE, initialOwner);
    }

    /// @inheritdoc IToken
    function batchMint(
        address[] calldata accounts,
        uint256[] calldata amounts
    ) external onlyOwner {
        if (accounts.length != amounts.length) {
            revert BatchMint__InputArrayMismatch();
        }

        uint256 accountsLength = accounts.length;

        for (uint256 i; i < accountsLength; ++i) {
            _mint(accounts[i], amounts[i]);
        }
    }

    /// @inheritdoc IToken
    function batchExecuteBurn(
        address[] calldata accounts
    ) external onlyRole(BURNER_ROLE) {
        Storage.Layout storage $ = Storage.layout();

        uint256 accountsLength = accounts.length;

        if (accountsLength == 0) {
            revert BatchExecuteBurn__EmptyArray();
        }

        uint256 totalBurnAmount;

        for (uint256 i; i < accountsLength; ++i) {
            (bool exists, uint256 amount) = $.burnRequests.tryGet(accounts[i]);

            if (!exists) {
                continue;
            }

            totalBurnAmount += amount;
            $.burnRequests.remove(accounts[i]);
        }

        _burn(address(this), totalBurnAmount);
    }

    /// @inheritdoc IToken
    function executeBurn(address account) external onlyRole(BURNER_ROLE) {
        Storage.Layout storage $ = Storage.layout();

        (bool exists, uint256 amount) = $.burnRequests.tryGet(account);
        if (!exists) {
            revert ExecuteBurn__NoBurnRequest();
        }

        $.burnRequests.remove(account);
        _burn(address(this), amount);
    }

    /// @inheritdoc IToken
    function mint(
        address account,
        uint256 amount
    ) external onlyRole(MINTER_ROLE) whenNotPaused {
        _mint(account, amount);
    }

    /// @inheritdoc IToken
    function pause() external onlyOwner {
        _pause();
    }

    /// @inheritdoc IToken
    function requestBurn(uint256 amount) external {
        Storage.Layout storage $ = Storage.layout();

        if (amount == 0) {
            revert RequestBurn__AmountIsZero();
        }

        (, uint256 currentBurnAmount) = $.burnRequests.tryGet(_msgSender());

        $.burnRequests.set(_msgSender(), amount);

        if (amount < currentBurnAmount) {
            _transfer(address(this), _msgSender(), currentBurnAmount - amount);
        } else if (amount > currentBurnAmount) {
            _transfer(_msgSender(), address(this), amount - currentBurnAmount);
        }

        emit BurnRequested(_msgSender(), amount);
    }

    /// @inheritdoc OFTCoreUpgradeable
    function send(
        SendParam calldata sendParam,
        MessagingFee calldata fee,
        address refundAddress
    )
        external
        payable
        override(IOFT, OFTCoreUpgradeable)
        whenNotPaused
        returns (
            MessagingReceipt memory msgReceipt,
            OFTReceipt memory oftReceipt
        )
    {
        if (
            address(uint160(uint256(sendParam.to))) == address(0) ||
            refundAddress == address(0)
        ) {
            revert Send__ZeroAddress();
        }

        if (sendParam.amountLD == 0) {
            revert Send__ZeroAmount();
        }

        (uint256 amountSentLD, uint256 amountReceivedLD) = _debit(
            _msgSender(),
            sendParam.amountLD,
            sendParam.minAmountLD,
            sendParam.dstEid
        );

        (bytes memory message, bytes memory options) = _buildMsgAndOptions(
            sendParam,
            amountReceivedLD
        );

        msgReceipt = _lzSend(
            sendParam.dstEid,
            message,
            options,
            fee,
            refundAddress
        );
        oftReceipt = OFTReceipt(amountSentLD, amountReceivedLD);

        emit OFTSent(
            msgReceipt.guid,
            sendParam.dstEid,
            _msgSender(),
            amountSentLD,
            amountReceivedLD
        );
    }

    /// @inheritdoc IToken
    function unpause() external onlyOwner {
        _unpause();
    }

    /// @inheritdoc IToken
    function withdrawSwappables(address receiver) external onlyOwner {
        if (SWAPPABLE_TOKEN == address(0)) {
            revert WithdrawSwappables__TokenDoesNotExist();
        }

        IERC20(SWAPPABLE_TOKEN).safeTransfer(
            receiver,
            IERC20(SWAPPABLE_TOKEN).balanceOf(address(this))
        );
    }

    /// @inheritdoc IToken
    function getBurnRequest(
        address account
    ) external view returns (uint256 amount) {
        (bool exists, uint256 value) = Storage.layout().burnRequests.tryGet(
            account
        );
        amount = exists ? value : 0;
    }

    /// @inheritdoc IToken
    function getPendingBurnRequests()
        external
        view
        returns (BurnRequest[] memory requests)
    {
        Storage.Layout storage $ = Storage.layout();
        uint256 length = $.burnRequests.length();

        requests = new BurnRequest[](length);

        for (uint256 i; i < length; ++i) {
            (address account, uint256 amount) = $.burnRequests.at(i);
            requests[i] = BurnRequest({ account: account, amount: amount });
        }
    }

    /// @inheritdoc IToken
    function getPendingBurnRequestsCount()
        external
        view
        returns (uint256 amount)
    {
        amount = Storage.layout().burnRequests.length();
    }
}
