// ============================================================
// FILE: contracts/interfaces/IKSZapRouterPositionPermit.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface IKSZapRouterPositionPermit {
  event ClientData(bytes _clientData);
  event ZapExecuted(
    address _validator,
    address _executor,
    bytes _zapInfo,
    bytes _extraData,
    bytes _initialData,
    bytes _zapResults
  );
  event ExecutorWhitelisted(address indexed _executor, bool indexed _grantOrRevoke);
  event ValidatorWhitelisted(address indexed _validator, bool indexed _grantOrRevoke);
  event ERC20Collected(address indexed _token, uint256 indexed _amount);
  event ERC721Collected(address indexed _token, uint256 indexed _id);

  /// @dev Contains general data for zapping and validation
  /// @param srcInfo src position info
  /// @param zapInfo extra info, depends on each dex type
  /// @param extraData extra data to be used for validation
  struct ZapDescription {
    ERC20SrcInfo erc20SrcInfo;
    ERC721SrcInfo erc721SrcInfo;
    bytes zapInfo;
    bytes extraData;
  }

  /// @dev Contains execution data for zapping
  /// @param validator validator address, must be whitelisted one
  /// @param executor zap executor address, must be whitelisted one
  /// @param deadline make sure the request is not expired yet
  /// @param executorData data for zap execution
  /// @param clientData for events and tracking purposes
  struct ZapExecutionData {
    address validator;
    address executor;
    uint32 deadline;
    bytes executorData;
    bytes clientData;
  }

  /// @dev Contains address and function for the delegatecall
  /// @param helper helper address
  /// @param funcSelector helper function
  struct DelegatecallData {
    address helper;
    bytes4 funcSelector;
  }

  struct ERC20SrcInfo {
    address[] tokens;
    uint256[] amounts;
    bytes[] permitData;
    bytes permit2Data;
  }

  struct ERC721SrcInfo {
    address[] tokens;
    uint256[] ids;
    bytes[] permitData;
  }

  /// @notice collect token, execute and validate zap
  function zap(ZapDescription calldata _desc, ZapExecutionData calldata _exe)
    external
    payable
    returns (bytes memory zapResults);

  function whitelistExecutors(address[] calldata _executors, bool _grantOrRevoke) external;
  function whitelistValidators(address[] calldata _validators, bool _grantOrRevoke) external;
}

// ============================================================
// FILE: contracts/interfaces/zap/common/IZapDexEnum.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

interface IZapDexEnum {
  // There must be a slot for EMPTY
  enum DexType {
    UniswapV2,
    UniswapV3,
    EMPTY,
    Curve,
    Balancer,
    AlgebraV19,
    AlgebraV19DirFee,
    RamsesV2,
    AerodromeV1,
    RingV2,
    KoiV2,
    SolidlyV3,
    AerodromeCL,
    AlgebraIntegralV12BasePluginV2,
    Gamma,
    PancakeV3Staking,
    ArrakisV1,
    ArrakisV2,
    GyroECLP,
    AlgebraIntegralV10BasePluginV1,
    FluidVaultT4,
    SyncswapV2,
    ZKSwapV3Staking,
    GammaSwap,
    RamsesV3,
    ShadowLegacy,
    ZKSwapV2,
    UniswapV4,
    PancakeV4CL,
    Steer,
    BunniV2,
    SquadswapV3Staking,
    BalancerV3,
    DodoV2,
    CamelotV2,
    ZapForwarder,
    KatanaV2,
    KatanaV3,
    Maverick,
    Generic,
    Arbera,
    SeamlessLT,
    AlgebraIntegralV12BasePluginV1
  }

  enum SrcType {
    ERC20Token,
    ERC721Token,
    ERC1155Token
  }
}

// ============================================================
// FILE: contracts/interfaces/zap/executors/IKSZapExecutorActions.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface IKSZapExecutorActions {
  // @notice Function execute zap
  /// @param _executorData bytes data and will be decoded into corresponding data depends on dex type
  /// @return zapResults result of the zap, depend on dex type
  function executeZap(bytes calldata _executorData)
    external
    payable
    returns (bytes memory zapResults);
}

// ============================================================
// FILE: contracts/interfaces/zap/validators/IKSZapValidatorActions.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface IKSZapValidatorActions {
  function prepareValidationData(uint8 dstType, bytes calldata _zapInfo)
    external
    view
    returns (bytes memory _validationData);

  function validateData(
    uint8 dstType,
    bytes calldata _extraData,
    bytes calldata _validationData,
    bytes calldata _zapResults
  ) external view returns (bool);
}

// ============================================================
// FILE: contracts/KSZapRouterPositionPermit.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {IKSZapRouterPositionPermit} from 'contracts/interfaces/IKSZapRouterPositionPermit.sol';

import {IZapDexEnum} from 'contracts/interfaces/zap/common/IZapDexEnum.sol';
import {IKSZapExecutorActions} from 'contracts/interfaces/zap/executors/IKSZapExecutorActions.sol';
import {
  IKSZapValidatorActions
} from 'contracts/interfaces/zap/validators/IKSZapValidatorActions.sol';

import {KSRescueV2} from 'ks-growth-utils-sc/contracts/KSRescueV2.sol';
import {ReentrancyGuard} from 'openzeppelin/contracts/security/ReentrancyGuard.sol';

import {IERC1155} from 'openzeppelin/contracts/token/ERC1155/IERC1155.sol';
import {IERC721} from 'openzeppelin/contracts/token/ERC721/IERC721.sol';

import {IAllowanceTransfer} from 'ks-common-sc/src/interfaces/IAllowanceTransfer.sol';
import {PermitHelper} from 'ks-common-sc/src/libraries/token/PermitHelper.sol';
import {TokenHelper} from 'ks-common-sc/src/libraries/token/TokenHelper.sol';

/// @notice Main KyberSwap Zap Router to allow users zapping into any dexes
/// It uses Validator to validate the zap result with flexibility, to enable adding more dexes
contract KSZapRouterPositionPermit is
  IKSZapRouterPositionPermit,
  IZapDexEnum,
  KSRescueV2,
  ReentrancyGuard
{
  using TokenHelper for address;
  using PermitHelper for address;

  address private constant ETH_ADDRESS = address(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);

  IAllowanceTransfer immutable permit2;

  mapping(address => bool) public whitelistedExecutor;
  mapping(address => bool) public whitelistedValidator;

  modifier checkDeadline(uint32 _deadline) {
    require(block.timestamp <= _deadline, 'ZapRouter: expired');
    _;
  }

  constructor(address _permit2) {
    permit2 = IAllowanceTransfer(_permit2);
  }

  /// @notice Whitelist executors by the owner, can grant or revoke
  function whitelistExecutors(address[] calldata _executors, bool _grantOrRevoke)
    external
    onlyOwner
  {
    for (uint256 i = 0; i < _executors.length; i++) {
      whitelistedExecutor[_executors[i]] = _grantOrRevoke;
      emit ExecutorWhitelisted(_executors[i], _grantOrRevoke);
    }
  }

  /// @notice Whitelist validators by the owner, can grant or revoke
  function whitelistValidators(address[] calldata _validators, bool _grantOrRevoke)
    external
    onlyOwner
  {
    for (uint256 i = 0; i < _validators.length; i++) {
      whitelistedValidator[_validators[i]] = _grantOrRevoke;
      emit ValidatorWhitelisted(_validators[i], _grantOrRevoke);
    }
  }

  /// @inheritdoc IKSZapRouterPositionPermit
  function zap(ZapDescription calldata _desc, ZapExecutionData calldata _exe)
    external
    payable
    override
    whenNotPaused
    nonReentrant
    checkDeadline(_exe.deadline)
    returns (bytes memory zapResults)
  {
    require(whitelistedExecutor[_exe.executor], 'ZapRouter: non whitelisted executor');

    // handle src token collection
    _handleCollectERC20Tokens(_desc.erc20SrcInfo, _exe.executor);
    _handleCollectERC721Tokens(_desc.erc721SrcInfo, _exe.executor);

    // prepare validation data
    bytes memory initialData;
    if (_exe.validator != address(0)) {
      require(whitelistedValidator[_exe.validator], 'ZapRouter: non whitelisted validator');
      initialData = IKSZapValidatorActions(_exe.validator).prepareValidationData(0, _desc.zapInfo);
    }

    // calling executor to execute the zap logic
    zapResults =
      IKSZapExecutorActions(_exe.executor).executeZap{value: msg.value}(_exe.executorData);

    // validate data after zapping if needed
    if (_exe.validator != address(0)) {
      bool isValid = IKSZapValidatorActions(_exe.validator)
        .validateData(0, _desc.extraData, initialData, zapResults);
      require(isValid, 'ZapRouter: validation failed');
    }

    emit ZapExecuted(
      _exe.validator, _exe.executor, _desc.zapInfo, _desc.extraData, initialData, zapResults
    );
    emit ClientData(_exe.clientData);
  }

  /// @notice Handle collecting ERC20 tokens and transfer to executor
  function _handleCollectERC20Tokens(ERC20SrcInfo calldata src, address _executor) internal {
    require(
      src.tokens.length == src.amounts.length && src.tokens.length == src.permitData.length,
      'ZapRouter: invalid data'
    );
    uint256 msgValue = msg.value;
    address msgSender = msg.sender;

    IAllowanceTransfer.AllowanceTransferDetails[] memory details =
      new IAllowanceTransfer.AllowanceTransferDetails[](src.tokens.length);
    uint256 detailsLength = 0;

    for (uint256 i = 0; i < src.tokens.length;) {
      if (src.tokens[i] == ETH_ADDRESS) {
        // native token, should appear only once with correct msg.value
        require(msgValue > 0 && msgValue == src.amounts[i], 'ZapRouter: invalid msg value');
        msgValue = 0;
      } else if (
        src.tokens[i].erc20Permit(msgSender, src.permitData[i]) || src.permitData[i].length == 0
      ) {
        src.tokens[i].safeTransferFrom(msgSender, _executor, src.amounts[i]);
      } else {
        details[detailsLength++] = IAllowanceTransfer.AllowanceTransferDetails({
          from: msgSender, to: _executor, amount: uint160(src.amounts[i]), token: src.tokens[i]
        });
      }

      emit ERC20Collected(src.tokens[i], src.amounts[i]);
      unchecked {
        ++i;
      }
    }
    require(msgValue == 0, 'ZapRouter: invalid msg value');

    if (detailsLength > 0) {
      if (src.permit2Data.length > 0) {
        (bool success,) = address(permit2)
          .call(abi.encodePacked(IAllowanceTransfer.permit.selector, src.permit2Data));
        if (!success) {
          revert('ZapRouter: permit2 permit failed');
        }
      }

      assembly ('memory-safe') {
        mstore(details, detailsLength)
      }
      permit2.transferFrom(details);
    }
  }

  /// @notice Handle collecting ERC721 token and transfer to executor
  function _handleCollectERC721Tokens(ERC721SrcInfo calldata src, address _executor) internal {
    require(
      src.tokens.length == src.ids.length && src.tokens.length == src.permitData.length,
      'ZapRouter: invalid data'
    );
    for (uint256 i = 0; i < src.tokens.length;) {
      src.tokens[i].erc721Permit(src.ids[i], src.permitData[i]);
      IERC721(src.tokens[i]).safeTransferFrom(msg.sender, _executor, src.ids[i]);
      emit ERC721Collected(src.tokens[i], src.ids[i]);
      unchecked {
        ++i;
      }
    }
  }
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../token/ERC20/IERC20.sol";

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC-20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[ERC-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC-20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * ==== Security Considerations
 *
 * There are two important considerations concerning the use of `permit`. The first is that a valid permit signature
 * expresses an allowance, and it should not be assumed to convey additional meaning. In particular, it should not be
 * considered as an intention to spend the allowance in any specific way. The second is that because permits have
 * built-in replay protection and can be submitted by anyone, they can be frontrun. A protocol that uses permits should
 * take this into consideration and allow a `permit` call to fail. Combining these two aspects, a pattern that may be
 * generally recommended is:
 *
 * ```solidity
 * function doThingWithPermit(..., uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) public {
 *     try token.permit(msg.sender, address(this), value, deadline, v, r, s) {} catch {}
 *     doThing(..., value);
 * }
 *
 * function doThing(..., uint256 value) public {
 *     token.safeTransferFrom(msg.sender, address(this), value);
 *     ...
 * }
 * ```
 *
 * Observe that: 1) `msg.sender` is used as the owner, leaving no ambiguity as to the signer intent, and 2) the use of
 * `try/catch` allows the permit to fail and makes the code tolerant to frontrunning. (See also
 * {SafeERC20-safeTransferFrom}).
 *
 * Additionally, note that smart contract wallets (such as Argent or Safe) are not able to produce permit signatures, so
 * contracts should have entry points that don't rely on permit.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     *
     * CAUTION: See Security Considerations above.
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: lib/ks-common-sc/lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/IAllowanceTransfer.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title AllowanceTransfer
/// @notice Handles ERC20 token permissions through signature based allowance setting and ERC20 token transfers by checking allowed amounts
/// @dev Requires user's token approval on the Permit2 contract
interface IAllowanceTransfer {
  /// @notice The permit data for a token
  struct PermitDetails {
    // ERC20 token address
    address token;
    // the maximum amount allowed to spend
    uint160 amount;
    // timestamp at which a spender's token allowances become invalid
    uint48 expiration;
    // an incrementing value indexed per owner,token,and spender for each signature
    uint48 nonce;
  }

  /// @notice The permit message signed for multiple token allowances
  struct PermitBatch {
    // the permit data for multiple token allowances
    PermitDetails[] details;
    // address permissioned on the allowed tokens
    address spender;
    // deadline on the permit signature
    uint256 sigDeadline;
  }

  /// @notice A token spender pair.
  struct TokenSpenderPair {
    // the token the spender is approved
    address token;
    // the spender address
    address spender;
  }

  /// @notice Details for a token transfer.
  struct AllowanceTransferDetails {
    // the owner of the token
    address from;
    // the recipient of the token
    address to;
    // the amount of the token
    uint160 amount;
    // the token to be transferred
    address token;
  }

  /// @notice Permit a spender to the signed amounts of the owners tokens via the owner's EIP-712 signature
  /// @dev May fail if the owner's nonce was invalidated in-flight by invalidateNonce
  /// @param owner The owner of the tokens being approved
  /// @param permitBatch Data signed over by the owner specifying the terms of approval
  /// @param signature The owner's signature over the permit data
  function permit(address owner, PermitBatch memory permitBatch, bytes calldata signature) external;

  /// @notice Transfer approved tokens in a batch
  /// @param transferDetails Array of owners, recipients, amounts, and tokens for the transfers
  /// @dev Requires the from addresses to have approved at least the desired amount
  /// of tokens to msg.sender.
  function transferFrom(AllowanceTransferDetails[] calldata transferDetails) external;
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/IDaiLikePermit.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Interface for DAI-style permits
interface IDaiLikePermit {
  /// @notice Permit a spender to a given amount of the holder's token via the holder's EIP-712 signature
  /// @dev May fail if the holder's nonce was invalidated in-flight by invalidateNonce
  /// @param holder The holder of the tokens being approved
  /// @param spender The address permissioned on the allowed tokens
  /// @param nonce The nonce of the holder
  /// @param expiry The expiry of the permit
  /// @param allowed Whether the permit is allowed
  /// @param v The v component of the signature
  /// @param r The r component of the signature
  /// @param s The s component of the signature
  function permit(
    address holder,
    address spender,
    uint256 nonce,
    uint256 expiry,
    bool allowed,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) external;
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/IERC721Permit_v3.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

/// @title ERC721 with permit
/// @notice Extension to ERC721 that includes a permit function for signature based approvals
interface IERC721Permit_v3 {
  /// @notice The permit typehash used in the permit signature
  /// @return The typehash for the permit
  function PERMIT_TYPEHASH() external pure returns (bytes32);

  /// @notice The domain separator used in the permit signature
  /// @return The domain seperator used in encoding of permit signature
  function DOMAIN_SEPARATOR() external view returns (bytes32);

  /// @notice Approve of a specific token ID for spending by spender via signature
  /// @param spender The account that is being approved
  /// @param tokenId The ID of the token that is being approved for spending
  /// @param deadline The deadline timestamp by which the call must be mined for the approve to work
  /// @param v Must produce valid secp256k1 signature from the holder along with `r` and `s`
  /// @param r Must produce valid secp256k1 signature from the holder along with `v` and `s`
  /// @param s Must produce valid secp256k1 signature from the holder along with `r` and `v`
  function permit(address spender, uint256 tokenId, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
    external
    payable;
}

// ============================================================
// FILE: lib/ks-common-sc/src/interfaces/IERC721Permit_v4.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title IERC721Permit_v4
/// @notice Interface for the ERC721Permit_v4 contract
interface IERC721Permit_v4 {
  error SignatureDeadlineExpired();
  error NoSelfPermit();
  error Unauthorized();

  /// @notice Approve of a specific token ID for spending by spender via signature
  /// @param spender The account that is being approved
  /// @param tokenId The ID of the token that is being approved for spending
  /// @param deadline The deadline timestamp by which the call must be mined for the approve to work
  /// @param nonce a unique value, for an owner, to prevent replay attacks; an unordered nonce where the top 248 bits correspond to a word and the bottom 8 bits calculate the bit position of the word
  /// @param signature Concatenated data from a valid secp256k1 signature from the holder, i.e. abi.encodePacked(r, s, v)
  /// @dev payable so it can be multicalled with NATIVE related actions
  function permit(
    address spender,
    uint256 tokenId,
    uint256 deadline,
    uint256 nonce,
    bytes calldata signature
  ) external payable;

  /// @notice Set an operator with full permission to an owner's tokens via signature
  /// @param owner The address that is setting the operator
  /// @param operator The address that will be set as an operator for the owner
  /// @param approved The permission to set on the operator
  /// @param deadline The deadline timestamp by which the call must be mined for the approve to work
  /// @param nonce a unique value, for an owner, to prevent replay attacks; an unordered nonce where the top 248 bits correspond to a word and the bottom 8 bits calculate the bit position of the word
  /// @param signature Concatenated data from a valid secp256k1 signature from the holder, i.e. abi.encodePacked(r, s, v)
  /// @dev payable so it can be multicalled with NATIVE related actions
  function permitForAll(
    address owner,
    address operator,
    bool approved,
    uint256 deadline,
    uint256 nonce,
    bytes calldata signature
  ) external payable;
}

// ============================================================
// FILE: lib/ks-common-sc/src/libraries/calldata/CalldataDecoder.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Library for abi decoding in calldata
library CalldataDecoder {
  error SliceOutOfBounds();

  /// @notice mask used for offsets and lengths to ensure no overflow
  /// @dev no sane abi encoding will pass in an offset or length greater than type(uint32).max
  ///      (note that this does deviate from standard solidity behavior and offsets/lengths will
  ///      be interpreted as mod type(uint32).max which will only impact malicious/buggy callers)
  uint256 constant OFFSET_OR_LENGTH_MASK = 0xffffffff;
  uint256 constant OFFSET_OR_LENGTH_MASK_AND_WORD_ALIGN = 0xffffffe0;

  /// @notice equivalent to SliceOutOfBounds.selector, stored in least-significant bits
  uint256 constant SLICE_ERROR_SELECTOR = 0x3b99b53d;

  function decodeAddress(bytes calldata data) internal pure returns (address value) {
    assembly ("memory-safe") {
      value := calldataload(data.offset)
    }
  }

  function decodeUint256(bytes calldata data) internal pure returns (uint256 value) {
    assembly ("memory-safe") {
      value := calldataload(data.offset)
    }
  }

  function decodeBool(bytes calldata data) internal pure returns (bool value) {
    assembly ("memory-safe") {
      value := calldataload(data.offset)
    }
  }

  function decodeBytes32(bytes calldata data) internal pure returns (bytes32 value) {
    assembly ("memory-safe") {
      value := calldataload(data.offset)
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as a dynamic array
  /// @dev The decoding of `length` and `offset` is universal,
  /// whereas the type declaration of `res` instructs the compiler how to read it.
  /// @param _bytes The input bytes string to slice
  /// @param _arg The index of the argument to extract
  /// @return length Length of the array
  /// @return offset Pointer to the data part of the array
  function decodeLengthOffset(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (uint256 length, uint256 offset)
  {
    assembly ("memory-safe") {
      // The offset of the `_arg`-th element is `32 * arg`, which stores the offset of the length pointer.
      // shl(5, x) is equivalent to mul(32, x)
      let lengthPtr := add(_bytes.offset, calldataload(add(_bytes.offset, shl(5, _arg))))
      length := calldataload(lengthPtr)
      offset := add(lengthPtr, 0x20)

      // if the provided bytes string isnt as long as the encoding says, revert
      if lt(add(_bytes.length, _bytes.offset), add(length, offset)) {
        mstore(0, SLICE_ERROR_SELECTOR)
        revert(0x1c, 4)
      }
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as `bytes`
  /// @param _bytes The input bytes string to extract a bytes string from
  /// @param _arg The index of the argument to extract
  function decodeBytes(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (bytes calldata res)
  {
    (uint256 length, uint256 offset) = decodeLengthOffset(_bytes, _arg);
    assembly ("memory-safe") {
      res.length := length
      res.offset := offset
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as `uint256[]`
  /// @param _bytes The input bytes string to extract a uint256 array from
  /// @param _arg The index of the argument to extract
  function decodeUint256Array(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (uint256[] calldata res)
  {
    (uint256 length, uint256 offset) = decodeLengthOffset(_bytes, _arg);
    assembly ("memory-safe") {
      res.length := length
      res.offset := offset
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as `address[]`
  /// @param _bytes The input bytes string to extract an address array from
  /// @param _arg The index of the argument to extract
  function decodeAddressArray(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (address[] calldata res)
  {
    (uint256 length, uint256 offset) = decodeLengthOffset(_bytes, _arg);
    assembly ("memory-safe") {
      res.length := length
      res.offset := offset
    }
  }

  /// @notice Decode the `_arg`-th element in `_bytes` as `bytes32[]`
  /// @param _bytes The input bytes string to extract a bytes32 array from
  /// @param _arg The index of the argument to extract
  function decodeBytes32Array(bytes calldata _bytes, uint256 _arg)
    internal
    pure
    returns (bytes32[] calldata res)
  {
    (uint256 length, uint256 offset) = decodeLengthOffset(_bytes, _arg);
    assembly ("memory-safe") {
      res.length := length
      res.offset := offset
    }
  }
}

// ============================================================
// FILE: lib/ks-common-sc/src/libraries/CustomRevert.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Library for reverting with custom errors efficiently
/// @notice Contains functions for reverting with custom errors with different argument types efficiently
/// @dev To use this library, declare `using CustomRevert for bytes4;` and replace `revert CustomError()` with
/// `CustomError.selector.revertWith()`
/// @dev The functions may tamper with the free memory pointer but it is fine since the call context is exited immediately
library CustomRevert {
  /// @dev ERC-7751 error for wrapping bubbled up reverts
  error WrappedError(address target, bytes4 selector, bytes reason, bytes details);

  /// @dev Reverts with the selector of a custom error in the scratch space
  function revertWith(bytes4 selector) internal pure {
    assembly ("memory-safe") {
      mstore(0, selector)
      revert(0, 0x04)
    }
  }

  /// @dev Reverts with a custom error with an address argument in the scratch space
  function revertWith(bytes4 selector, address addr) internal pure {
    assembly ("memory-safe") {
      mstore(0, selector)
      mstore(0x04, and(addr, 0xffffffffffffffffffffffffffffffffffffffff))
      revert(0, 0x24)
    }
  }

  /// @dev Reverts with a custom error with an int24 argument in the scratch space
  function revertWith(bytes4 selector, int24 value) internal pure {
    assembly ("memory-safe") {
      mstore(0, selector)
      mstore(0x04, signextend(2, value))
      revert(0, 0x24)
    }
  }

  /// @dev Reverts with a custom error with a uint160 argument in the scratch space
  function revertWith(bytes4 selector, uint160 value) internal pure {
    assembly ("memory-safe") {
      mstore(0, selector)
      mstore(0x04, and(value, 0xffffffffffffffffffffffffffffffffffffffff))
      revert(0, 0x24)
    }
  }

  /// @dev Reverts with a custom error with two int24 arguments
  function revertWith(bytes4 selector, int24 value1, int24 value2) internal pure {
    assembly ("memory-safe") {
      let fmp := mload(0x40)
      mstore(fmp, selector)
      mstore(add(fmp, 0x04), signextend(2, value1))
      mstore(add(fmp, 0x24), signextend(2, value2))
      revert(fmp, 0x44)
    }
  }

  /// @dev Reverts with a custom error with two uint160 arguments
  function revertWith(bytes4 selector, uint160 value1, uint160 value2) internal pure {
    assembly ("memory-safe") {
      let fmp := mload(0x40)
      mstore(fmp, selector)
      mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
      mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
      revert(fmp, 0x44)
    }
  }

  /// @dev Reverts with a custom error with two address arguments
  function revertWith(bytes4 selector, address value1, address value2) internal pure {
    assembly ("memory-safe") {
      let fmp := mload(0x40)
      mstore(fmp, selector)
      mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
      mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
      revert(fmp, 0x44)
    }
  }

  /// @notice bubble up the revert message returned by a call and revert with a wrapped ERC-7751 error
  /// @dev this method can be vulnerable to revert data bombs
  function bubbleUpAndRevertWith(
    address revertingContract,
    bytes4 revertingFunctionSelector,
    bytes4 additionalContext
  ) internal pure {
    bytes4 wrappedErrorSelector = WrappedError.selector;
    assembly ("memory-safe") {
      // Ensure the size of the revert data is a multiple of 32 bytes
      let encodedDataSize := mul(div(add(returndatasize(), 31), 32), 32)

      let fmp := mload(0x40)

      // Encode wrapped error selector, address, function selector, offset, additional context, size, revert reason
      mstore(fmp, wrappedErrorSelector)
      mstore(add(fmp, 0x04), and(revertingContract, 0xffffffffffffffffffffffffffffffffffffffff))
      mstore(
        add(fmp, 0x24),
        and(
          revertingFunctionSelector,
          0xffffffff00000000000000000000000000000000000000000000000000000000
        )
      )
      // offset revert reason
      mstore(add(fmp, 0x44), 0x80)
      // offset additional context
      mstore(add(fmp, 0x64), add(0xa0, encodedDataSize))
      // size revert reason
      mstore(add(fmp, 0x84), returndatasize())
      // revert reason
      returndatacopy(add(fmp, 0xa4), 0, returndatasize())
      // size additional context
      mstore(add(fmp, add(0xa4, encodedDataSize)), 0x04)
      // additional context
      mstore(
        add(fmp, add(0xc4, encodedDataSize)),
        and(additionalContext, 0xffffffff00000000000000000000000000000000000000000000000000000000)
      )
      revert(fmp, add(0xe4, encodedDataSize))
    }
  }
}

// ============================================================
// FILE: lib/ks-common-sc/src/libraries/token/PermitHelper.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {IDaiLikePermit} from '../../interfaces/IDaiLikePermit.sol';
import {IERC721Permit_v3} from '../../interfaces/IERC721Permit_v3.sol';
import {IERC721Permit_v4} from '../../interfaces/IERC721Permit_v4.sol';
import {CustomRevert} from '../CustomRevert.sol';
import {CalldataDecoder} from '../calldata/CalldataDecoder.sol';
import {IERC20Permit} from
  'openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol';

library PermitHelper {
  using CalldataDecoder for bytes;

  /// @notice Additional context for ERC-7751 wrapped error when permit fails
  error ERC20PermitFailed();
  error ERC721PermitFailed();

  function erc20Permit(address token, address owner, bytes calldata permitData)
    internal
    returns (bool success)
  {
    if (permitData.length == 32 * 5) {
      success = _callErc20Permit(token, owner, IERC20Permit.permit.selector, permitData);
    } else if (permitData.length == 32 * 6) {
      success = _callErc20Permit(token, owner, IDaiLikePermit.permit.selector, permitData);
    } else {
      return false;
    }
  }

  function erc721Permit(address token, uint256 tokenId, bytes calldata permitData)
    internal
    returns (bool success)
  {
    if (permitData.length == 32 * 4) {
      success = _callErc721Permit(token, tokenId, IERC721Permit_v3.permit.selector, permitData, 0);
    } else if (permitData.length == 32 * 7) {
      success =
        _callErc721Permit(token, tokenId, IERC721Permit_v4.permit.selector, permitData, 0xa0);
    } else {
      return false;
    }
  }

  function _callErc721Permit(
    address token,
    uint256 tokenId,
    bytes4 selector,
    bytes calldata permitData,
    uint256 overrideSigOffset
  ) internal returns (bool success) {
    bytes memory data = new bytes(4 + 32 * 2 + permitData.length);
    assembly ("memory-safe") {
      mstore(add(data, 0x20), selector)
      mstore(add(data, 0x24), address())
      mstore(add(data, 0x44), tokenId)
      calldatacopy(add(data, 0x64), permitData.offset, permitData.length)
      // override the signature offset in case dynamic bytes (65 bytes length)
      if overrideSigOffset { mstore(add(data, add(overrideSigOffset, 4)), overrideSigOffset) }
      success := call(gas(), token, 0, add(data, 0x20), mload(data), 0, 0)
    }

    if (!success) {
      CustomRevert.bubbleUpAndRevertWith(token, selector, ERC721PermitFailed.selector);
    }
  }

  function _callErc20Permit(
    address token,
    address owner,
    bytes4 selector,
    bytes calldata permitData
  ) internal returns (bool success) {
    bytes memory data = new bytes(4 + 32 * 2 + permitData.length);
    assembly ("memory-safe") {
      mstore(add(data, 0x20), selector)
      mstore(add(data, 0x24), owner)
      mstore(add(data, 0x44), address())
      calldatacopy(add(data, 0x64), permitData.offset, permitData.length)
      success := call(gas(), token, 0, add(data, 0x20), mload(data), 0, 0)
    }

    if (!success) {
      CustomRevert.bubbleUpAndRevertWith(token, selector, ERC20PermitFailed.selector);
    }
  }
}

// ============================================================
// FILE: lib/ks-common-sc/src/libraries/token/TokenHelper.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {CustomRevert} from '../CustomRevert.sol';

import {IERC20} from 'openzeppelin-contracts/contracts/interfaces/IERC20.sol';

/// @title Library for transferring, approving and holding native tokens and ERC20 tokens
/// @dev This library is based on CurrencyLibrary.sol from Uniswap/v4-core and SafeTransferLib.sol from transmissions11/solmate
library TokenHelper {
  /// @notice Additional context for ERC-7751 wrapped error when a native transfer fails
  error NativeTransferFailed();

  /// @notice Additional context for ERC-7751 wrapped error when an ERC20 transfer fails
  error ERC20TransferFailed();

  /// @notice Additional context for ERC-7751 wrapped error when an ERC20 approve fails
  error ERC20ApproveFailed();

  address constant NATIVE_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

  function isNative(address token) internal pure returns (bool) {
    return token == NATIVE_ADDRESS;
  }

  function safeTransferNative(address to, uint256 amount) internal {
    if (amount == 0) return;

    bool success;
    assembly ("memory-safe") {
      // Transfer the ETH and revert if it fails.
      success := call(gas(), to, amount, 0, 0, 0, 0)
    }
    // revert with NativeTransferFailed, containing the bubbled up error as an argument
    if (!success) {
      CustomRevert.bubbleUpAndRevertWith(to, bytes4(0), NativeTransferFailed.selector);
    }
  }

  function safeTransferERC20(address token, address to, uint256 amount) internal {
    if (amount == 0) return;

    bool success;
    assembly ("memory-safe") {
      // Get a pointer to some free memory.
      let fmp := mload(0x40)

      // Write the abi-encoded calldata into memory, beginning with the function selector.
      mstore(fmp, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
      mstore(add(fmp, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
      mstore(add(fmp, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

      success :=
        and(
          // Set success to whether the call reverted, if not we check it either
          // returned exactly 1 (can't just be non-zero data), or had no return data.
          or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
          // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
          // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
          // Counterintuitively, this call must be positioned second to the or() call in the
          // surrounding and() call or else returndatasize() will be zero during the computation.
          call(gas(), token, 0, fmp, 68, 0, 32)
        )

      // Now clean the memory we used
      mstore(fmp, 0) // 4 byte `selector` and 28 bytes of `to` were stored here
      mstore(add(fmp, 0x20), 0) // 4 bytes of `to` and 28 bytes of `amount` were stored here
      mstore(add(fmp, 0x40), 0) // 4 bytes of `amount` were stored here
    }
    // revert with ERC20TransferFailed, containing the bubbled up error as an argument
    if (!success) {
      CustomRevert.bubbleUpAndRevertWith(
        token, IERC20.transfer.selector, ERC20TransferFailed.selector
      );
    }
  }

  function safeTransfer(address token, address to, uint256 amount) internal {
    if (isNative(token)) {
      safeTransferNative(to, amount);
    } else {
      safeTransferERC20(token, to, amount);
    }
  }

  function safeTransferFrom(address token, address from, address to, uint256 amount) internal {
    if (amount == 0) return;

    bool success;
    assembly ("memory-safe") {
      // Get a pointer to some free memory.
      let fmp := mload(0x40)

      // Write the abi-encoded calldata into memory, beginning with the function selector.
      mstore(fmp, 0x23b872dd00000000000000000000000000000000000000000000000000000000)
      mstore(add(fmp, 4), and(from, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "from" argument.
      mstore(add(fmp, 36), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
      mstore(add(fmp, 68), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

      success :=
        and(
          // Set success to whether the call reverted, if not we check it either
          // returned exactly 1 (can't just be non-zero data), or had no return data.
          or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
          // We use 100 because the length of our calldata totals up like so: 4 + 32 * 3.
          // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
          // Counterintuitively, this call must be positioned second to the or() call in the
          // surrounding and() call or else returndatasize() will be zero during the computation.
          call(gas(), token, 0, fmp, 100, 0, 32)
        )

      // Now clean the memory we used
      mstore(fmp, 0) // 4 byte `selector` and 28 bytes of `from` were stored here
      mstore(add(fmp, 0x20), 0) // 4 bytes of `from` and 28 bytes of `to` were stored here
      mstore(add(fmp, 0x40), 0) // 4 bytes of `to` and 28 bytes of `amount` were stored here
      mstore(add(fmp, 0x60), 0) // 4 bytes of `amount` were stored here
    }
    // revert with ERC20TransferFailed, containing the bubbled up error as an argument
    if (!success) {
      CustomRevert.bubbleUpAndRevertWith(
        token, IERC20.transferFrom.selector, ERC20TransferFailed.selector
      );
    }
  }

  function trySafeApprove(address token, address spender, uint256 amount)
    internal
    returns (bool success)
  {
    assembly ("memory-safe") {
      // Get a pointer to some free memory.
      let fmp := mload(0x40)

      // Write the abi-encoded calldata into memory, beginning with the function selector.
      mstore(fmp, 0x095ea7b300000000000000000000000000000000000000000000000000000000)
      mstore(add(fmp, 4), and(spender, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "spender" argument.
      mstore(add(fmp, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

      success :=
        and(
          // Set success to whether the call reverted, if not we check it either
          // returned exactly 1 (can't just be non-zero data), or had no return data.
          or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
          // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
          // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
          // Counterintuitively, this call must be positioned second to the or() call in the
          // surrounding and() call or else returndatasize() will be zero during the computation.
          call(gas(), token, 0, fmp, 68, 0, 32)
        )

      // Now clean the memory we used
      mstore(fmp, 0) // 4 byte `selector` and 28 bytes of `to` were stored here
      mstore(add(fmp, 0x20), 0) // 4 bytes of `to` and 28 bytes of `amount` were stored here
      mstore(add(fmp, 0x40), 0) // 4 bytes of `amount` were stored here
    }
  }

  function safeApprove(address token, address spender, uint256 amount) internal {
    // revert with ERC20ApproveFailed, containing the bubbled up error as an argument
    if (!trySafeApprove(token, spender, amount)) {
      CustomRevert.bubbleUpAndRevertWith(
        token, IERC20.approve.selector, ERC20ApproveFailed.selector
      );
    }
  }

  function forceApprove(address token, address spender, uint256 amount) internal {
    // meant to be used with tokens that require the approval to be set to zero before setting it to a non-zero value, such as USDT
    if (!trySafeApprove(token, spender, amount)) {
      safeApprove(token, spender, 0);
      safeApprove(token, spender, amount);
    }
  }

  function balanceOf(address token, address account) internal view returns (uint256) {
    if (isNative(token)) {
      return account.balance;
    } else {
      return IERC20(token).balanceOf(account);
    }
  }

  function selfBalance(address token) internal view returns (uint256) {
    if (isNative(token)) {
      return address(this).balance;
    } else {
      return IERC20(token).balanceOf(address(this));
    }
  }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/contracts/KSRescue.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {KyberSwapRole} from '@src/KyberSwapRole.sol';
import {IERC20} from '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {SafeERC20} from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

abstract contract KSRescue is KyberSwapRole {
  using SafeERC20 for IERC20;

  address private constant ETH_ADDRESS = address(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);

  function rescueFunds(address token, uint256 amount, address recipient) external onlyOwner {
    require(recipient != address(0), 'KSRescue: invalid recipient');
    if (amount == 0) amount = _getAvailableAmount(token);
    if (amount > 0) {
      if (_isETH(token)) {
        (bool success,) = recipient.call{value: amount}('');
        require(success, 'KSRescue: ETH_TRANSFER_FAILED');
      } else {
        IERC20(token).safeTransfer(recipient, amount);
      }
    }
  }

  function _getAvailableAmount(address token) internal view virtual returns (uint256 amount) {
    if (_isETH(token)) {
      amount = address(this).balance;
    } else {
      amount = IERC20(token).balanceOf(address(this));
    }
    if (amount > 0) --amount;
  }

  function _isETH(address token) internal pure returns (bool) {
    return (token == ETH_ADDRESS);
  }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/contracts/KSRescueV2.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {KSRescue} from '@src/KSRescue.sol';
import {IERC721} from '@openzeppelin/contracts/token/ERC721/IERC721.sol';
import {IERC1155} from '@openzeppelin/contracts/token/ERC1155/IERC1155.sol';

abstract contract KSRescueV2 is KSRescue {
  function rescueBatchERC721(
    address token,
    uint256[] calldata _ids,
    address recipient
  ) external onlyOwner {
    require(recipient != address(0), 'KSRescue: invalid recipient');
    for (uint256 i = 0; i < _ids.length; i++) {
      IERC721(token).transferFrom(address(this), recipient, _ids[i]);
    }
  }

  function rescueBatchERC1155(
    address token,
    uint256[] calldata ids,
    uint256[] memory amounts,
    bytes calldata data,
    address recipient
  ) external onlyOwner {
    require(recipient != address(0), 'KSRescue: invalid recipient');
    require(ids.length == amounts.length, 'KSRescue: invalid array length');
    for (uint256 i = 0; i < ids.length; ++i) {
      if (amounts[i] == 0) amounts[i] = IERC1155(token).balanceOf(address(this), ids[i]);
    }
    IERC1155(token).safeBatchTransferFrom(address(this), recipient, ids, amounts, data);
  }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/contracts/KyberSwapRole.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Ownable} from '@openzeppelin/contracts/access/Ownable.sol';
import {Pausable} from '@openzeppelin/contracts/security/Pausable.sol';

abstract contract KyberSwapRole is Ownable, Pausable {
  mapping(address => bool) public operators;
  mapping(address => bool) public guardians;

  /**
   * @dev Emitted when the an user was grant or revoke operator role.
   */
  event UpdateOperator(address user, bool grantOrRevoke);

  /**
   * @dev Emitted when the an user was grant or revoke guardian role.
   */
  event UpdateGuardian(address user, bool grantOrRevoke);

  /**
   * @dev Modifier to make a function callable only when caller is operator.
   *
   * Requirements:
   *
   * - Caller must have operator role.
   */
  modifier onlyOperator() {
    require(operators[msg.sender], 'KyberSwapRole: not operator');
    _;
  }

  /**
   * @dev Modifier to make a function callable only when caller is guardian.
   *
   * Requirements:
   *
   * - Caller must have guardian role.
   */
  modifier onlyGuardian() {
    require(guardians[msg.sender], 'KyberSwapRole: not guardian');
    _;
  }

  /**
   * @dev Update Operator role for user.
   * Can only be called by the current owner.
   */
  function updateOperator(address user, bool grantOrRevoke) external onlyOwner {
    operators[user] = grantOrRevoke;
    emit UpdateOperator(user, grantOrRevoke);
  }

  /**
   * @dev Update Guardian role for user.
   * Can only be called by the current owner.
   */
  function updateGuardian(address user, bool grantOrRevoke) external onlyOwner {
    guardians[user] = grantOrRevoke;
    emit UpdateGuardian(user, grantOrRevoke);
  }

  /**
   * @dev Enable logic for contract.
   * Can only be called by the current owner.
   */
  function enableLogic() external onlyOwner {
    _unpause();
  }

  /**
   * @dev Disable logic for contract.
   * Can only be called by the guardians.
   */
  function disableLogic() external onlyGuardian {
    _pause();
  }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/Context.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _setOwner(_msgSender());
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _setOwner(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _setOwner(newOwner);
    }

    function _setOwner(address newOwner) private {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/security/Pausable.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/Context.sol";

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract Pausable is Context {
    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    bool private _paused;

    /**
     * @dev Initializes the contract in unpaused state.
     */
    constructor() {
        _paused = false;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        require(!paused(), "Pausable: paused");
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        require(paused(), "Pausable: not paused");
        _;
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/token/ERC1155/IERC1155.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC1155 compliant contract, as defined in the
 * https://eips.ethereum.org/EIPS/eip-1155[EIP].
 *
 * _Available since v3.1._
 */
interface IERC1155 is IERC165 {
    /**
     * @dev Emitted when `value` tokens of token type `id` are transferred from `from` to `to` by `operator`.
     */
    event TransferSingle(address indexed operator, address indexed from, address indexed to, uint256 id, uint256 value);

    /**
     * @dev Equivalent to multiple {TransferSingle} events, where `operator`, `from` and `to` are the same for all
     * transfers.
     */
    event TransferBatch(
        address indexed operator,
        address indexed from,
        address indexed to,
        uint256[] ids,
        uint256[] values
    );

    /**
     * @dev Emitted when `account` grants or revokes permission to `operator` to transfer their tokens, according to
     * `approved`.
     */
    event ApprovalForAll(address indexed account, address indexed operator, bool approved);

    /**
     * @dev Emitted when the URI for token type `id` changes to `value`, if it is a non-programmatic URI.
     *
     * If an {URI} event was emitted for `id`, the standard
     * https://eips.ethereum.org/EIPS/eip-1155#metadata-extensions[guarantees] that `value` will equal the value
     * returned by {IERC1155MetadataURI-uri}.
     */
    event URI(string value, uint256 indexed id);

    /**
     * @dev Returns the amount of tokens of token type `id` owned by `account`.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function balanceOf(address account, uint256 id) external view returns (uint256);

    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {balanceOf}.
     *
     * Requirements:
     *
     * - `accounts` and `ids` must have the same length.
     */
    function balanceOfBatch(address[] calldata accounts, uint256[] calldata ids)
        external
        view
        returns (uint256[] memory);

    /**
     * @dev Grants or revokes permission to `operator` to transfer the caller's tokens, according to `approved`,
     *
     * Emits an {ApprovalForAll} event.
     *
     * Requirements:
     *
     * - `operator` cannot be the caller.
     */
    function setApprovalForAll(address operator, bool approved) external;

    /**
     * @dev Returns true if `operator` is approved to transfer ``account``'s tokens.
     *
     * See {setApprovalForAll}.
     */
    function isApprovedForAll(address account, address operator) external view returns (bool);

    /**
     * @dev Transfers `amount` tokens of token type `id` from `from` to `to`.
     *
     * Emits a {TransferSingle} event.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - If the caller is not `from`, it must be have been approved to spend ``from``'s tokens via {setApprovalForAll}.
     * - `from` must have a balance of tokens of type `id` of at least `amount`.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155Received} and return the
     * acceptance magic value.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 id,
        uint256 amount,
        bytes calldata data
    ) external;

    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {safeTransferFrom}.
     *
     * Emits a {TransferBatch} event.
     *
     * Requirements:
     *
     * - `ids` and `amounts` must have the same length.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155BatchReceived} and return the
     * acceptance magic value.
     */
    function safeBatchTransferFrom(
        address from,
        address to,
        uint256[] calldata ids,
        uint256[] calldata amounts,
        bytes calldata data
    ) external;
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../IERC20.sol";
import "../../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    function safeTransfer(
        IERC20 token,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(
        IERC20 token,
        address from,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender) + value;
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            uint256 newAllowance = oldAllowance - value;
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address.functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        if (returndata.length > 0) {
            // Return data is optional
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/token/ERC721/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC721 compliant contract.
 */
interface IERC721 is IERC165 {
    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be have been allowed to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Usage of this method is discouraged, use {safeTransferFrom} whenever possible.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool _approved) external;

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes calldata data
    ) external;
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.

        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(isContract(target), "Address: delegate call to non-contract");

        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verifies that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (security/ReentrancyGuard.sol)

pragma solidity ^0.8.0;

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
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == _ENTERED;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC1155/IERC1155.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC1155/IERC1155.sol)

pragma solidity ^0.8.0;

import "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC1155 compliant contract, as defined in the
 * https://eips.ethereum.org/EIPS/eip-1155[EIP].
 *
 * _Available since v3.1._
 */
interface IERC1155 is IERC165 {
    /**
     * @dev Emitted when `value` tokens of token type `id` are transferred from `from` to `to` by `operator`.
     */
    event TransferSingle(address indexed operator, address indexed from, address indexed to, uint256 id, uint256 value);

    /**
     * @dev Equivalent to multiple {TransferSingle} events, where `operator`, `from` and `to` are the same for all
     * transfers.
     */
    event TransferBatch(
        address indexed operator,
        address indexed from,
        address indexed to,
        uint256[] ids,
        uint256[] values
    );

    /**
     * @dev Emitted when `account` grants or revokes permission to `operator` to transfer their tokens, according to
     * `approved`.
     */
    event ApprovalForAll(address indexed account, address indexed operator, bool approved);

    /**
     * @dev Emitted when the URI for token type `id` changes to `value`, if it is a non-programmatic URI.
     *
     * If an {URI} event was emitted for `id`, the standard
     * https://eips.ethereum.org/EIPS/eip-1155#metadata-extensions[guarantees] that `value` will equal the value
     * returned by {IERC1155MetadataURI-uri}.
     */
    event URI(string value, uint256 indexed id);

    /**
     * @dev Returns the amount of tokens of token type `id` owned by `account`.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function balanceOf(address account, uint256 id) external view returns (uint256);

    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {balanceOf}.
     *
     * Requirements:
     *
     * - `accounts` and `ids` must have the same length.
     */
    function balanceOfBatch(
        address[] calldata accounts,
        uint256[] calldata ids
    ) external view returns (uint256[] memory);

    /**
     * @dev Grants or revokes permission to `operator` to transfer the caller's tokens, according to `approved`,
     *
     * Emits an {ApprovalForAll} event.
     *
     * Requirements:
     *
     * - `operator` cannot be the caller.
     */
    function setApprovalForAll(address operator, bool approved) external;

    /**
     * @dev Returns true if `operator` is approved to transfer ``account``'s tokens.
     *
     * See {setApprovalForAll}.
     */
    function isApprovedForAll(address account, address operator) external view returns (bool);

    /**
     * @dev Transfers `amount` tokens of token type `id` from `from` to `to`.
     *
     * Emits a {TransferSingle} event.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - If the caller is not `from`, it must have been approved to spend ``from``'s tokens via {setApprovalForAll}.
     * - `from` must have a balance of tokens of type `id` of at least `amount`.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155Received} and return the
     * acceptance magic value.
     */
    function safeTransferFrom(address from, address to, uint256 id, uint256 amount, bytes calldata data) external;

    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {safeTransferFrom}.
     *
     * Emits a {TransferBatch} event.
     *
     * Requirements:
     *
     * - `ids` and `amounts` must have the same length.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155BatchReceived} and return the
     * acceptance magic value.
     */
    function safeBatchTransferFrom(
        address from,
        address to,
        uint256[] calldata ids,
        uint256[] calldata amounts,
        bytes calldata data
    ) external;
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC721/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC721/IERC721.sol)

pragma solidity ^0.8.0;

import "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC721 compliant contract.
 */
interface IERC721 is IERC165 {
    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must have been allowed to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Note that the caller is responsible to confirm that the recipient is capable of receiving ERC721
     * or else they may be permanently lost. Usage of {safeTransferFrom} prevents loss, though the caller must
     * understand this adds an external call which potentially creates a reentrancy vulnerability.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external;

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool approved) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/introspection/IERC165.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
