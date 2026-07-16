// File: contracts\interfaces\IERC20.sol

pragma solidity >=0.5.0;

interface IERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
}

// File: contracts\interfaces\IERC721.sol

pragma solidity >=0.5.0;

interface IERC721 {
	event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
	event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
	event ApprovalForAll(address indexed owner, address indexed operator, bool approved);
	
	function name() external view returns (string memory);
	function symbol() external view returns (string memory);
	function balanceOf(address owner) external view returns (uint256 balance);
	function ownerOf(uint256 tokenId) external view returns (address owner);
	function getApproved(uint256 tokenId) external view returns (address operator);
	function isApprovedForAll(address owner, address operator) external view returns (bool);
	
	function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;
	function safeTransferFrom(address from, address to, uint256 tokenId) external;
	function transferFrom(address from, address to, uint256 tokenId) external;
	function approve(address to, uint256 tokenId) external;
	function setApprovalForAll(address operator, bool approved) external;
	function permit(address spender, uint tokenId, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
}

// File: contracts\interfaces\IWETH.sol

pragma solidity >=0.5.0;

interface IWETH {
    function deposit() external payable;
    function transfer(address to, uint value) external returns (bool);
    function withdraw(uint) external;
}

// File: contracts\interfaces\IV3BaseRouter01.sol

pragma solidity >=0.5.0;

interface IV3BaseRouter01 {
	struct LendingPool {
		address nftlp;
		address collateral;
		address[2] borrowables;
		address[2] tokens;
	}
	function getLendingPool(address nftlp) external view returns (LendingPool memory pool);
	function factory() external view returns (address);
	
	function execute(
		address nftlp,
		uint _tokenId,
		bytes calldata actionsData,
		bytes calldata permitsData,
		bool withCollateralTransfer
	) external payable;
}

// File: contracts\libraries\Math.sol

pragma solidity >=0.5.0;

// a library for performing various math operations
// forked from: https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/libraries/Math.sol

library Math {
    function min(uint x, uint y) internal pure returns (uint z) {
        z = x < y ? x : y;
    }
    function max(uint x, uint y) internal pure returns (uint z) {
        z = x > y ? x : y;
    }

    // babylonian method (https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method)
    function sqrt(uint y) internal pure returns (uint z) {
        if (y > 3) {
            z = y;
            uint x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }
}

// File: contracts\libraries\SafeMath.sol

pragma solidity >=0.5.0;

// From https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/Math.sol
// Subject to the MIT license.

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting with custom message on overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, errorMessage);

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on underflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     * - Subtraction cannot underflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction underflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on underflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     * - Subtraction cannot underflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, errorMessage);

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers.
     * Reverts on division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers.
     * Reverts with custom message on division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts with custom message when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}

// File: contracts\libraries\TransferHelper.sol

// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.5.0;

// helper methods for interacting with ERC20 tokens and sending ETH that do not consistently return true/false
library TransferHelper {
    function safeApprove(
        address token,
        address to,
        uint256 value
    ) internal {
        // bytes4(keccak256(bytes('approve(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x095ea7b3, to, value));
        require(
            success && (data.length == 0 || abi.decode(data, (bool))),
            'TransferHelper::safeApprove: approve failed'
        );
    }

    function safeTransfer(
        address token,
        address to,
        uint256 value
    ) internal {
        // bytes4(keccak256(bytes('transfer(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0xa9059cbb, to, value));
        require(
            success && (data.length == 0 || abi.decode(data, (bool))),
            'TransferHelper::safeTransfer: transfer failed'
        );
    }

    function safeTransferFrom(
        address token,
        address from,
        address to,
        uint256 value
    ) internal {
        // bytes4(keccak256(bytes('transferFrom(address,address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x23b872dd, from, to, value));
        require(
            success && (data.length == 0 || abi.decode(data, (bool))),
            'TransferHelper::transferFrom: transferFrom failed'
        );
    }

    function safeTransferETH(address to, uint256 value) internal {
        (bool success, ) = to.call.value(value)(new bytes(0));
        require(success, 'TransferHelper::safeTransferETH: ETH transfer failed');
    }
}

// File: contracts\interfaces\IAllowanceTransfer.sol

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;
pragma experimental ABIEncoderV2;

interface IAllowanceTransfer {

	function DOMAIN_SEPARATOR() external view returns (bytes32);

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

    /// @notice The permit message signed for a single token allowance
    struct PermitSingle {
        // the permit data for a single token alownce
        PermitDetails details;
        // address permissioned on the allowed tokens
        address spender;
        // deadline on the permit signature
        uint256 sigDeadline;
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

    /// @notice The saved permissions
    /// @dev This info is saved per owner, per token, per spender and all signed over in the permit message
    /// @dev Setting amount to type(uint160).max sets an unlimited approval
    struct PackedAllowance {
        // amount allowed
        uint160 amount;
        // permission expiry
        uint48 expiration;
        // an incrementing value indexed per owner,token,and spender for each signature
        uint48 nonce;
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

    /// @notice A mapping from owner address to token address to spender address to PackedAllowance struct, which contains details and conditions of the approval.
    /// @notice The mapping is indexed in the above order see: allowance[ownerAddress][tokenAddress][spenderAddress]
    /// @dev The packed slot holds the allowed amount, expiration at which the allowed amount is no longer valid, and current nonce thats updated on any signature based approvals.
    function allowance(address user, address token, address spender)
        external
        view
        returns (uint160 amount, uint48 expiration, uint48 nonce);

    /// @notice Approves the spender to use up to amount of the specified token up until the expiration
    /// @param token The token to approve
    /// @param spender The spender address to approve
    /// @param amount The approved amount of the token
    /// @param expiration The timestamp at which the approval is no longer valid
    /// @dev The packed allowance also holds a nonce, which will stay unchanged in approve
    /// @dev Setting amount to type(uint160).max sets an unlimited approval
    function approve(address token, address spender, uint160 amount, uint48 expiration) external;

    /// @notice Permit a spender to a given amount of the owners token via the owner's EIP-712 signature
    /// @dev May fail if the owner's nonce was invalidated in-flight by invalidateNonce
    /// @param owner The owner of the tokens being approved
    /// @param permitSingle Data signed over by the owner specifying the terms of approval
    /// @param signature The owner's signature over the permit data
    function permit(address owner, PermitSingle calldata permitSingle, bytes calldata signature) external;

    /// @notice Permit a spender to the signed amounts of the owners tokens via the owner's EIP-712 signature
    /// @dev May fail if the owner's nonce was invalidated in-flight by invalidateNonce
    /// @param owner The owner of the tokens being approved
    /// @param permitBatch Data signed over by the owner specifying the terms of approval
    /// @param signature The owner's signature over the permit data
    function permit(address owner, PermitBatch calldata permitBatch, bytes calldata signature) external;

    /// @notice Transfer approved tokens from one address to another
    /// @param from The address to transfer from
    /// @param to The address of the recipient
    /// @param amount The amount of the token to transfer
    /// @param token The token address to transfer
    /// @dev Requires the from address to have approved at least the desired amount
    /// of tokens to msg.sender.
    function transferFrom(address from, address to, uint160 amount, address token) external;

    /// @notice Transfer approved tokens in a batch
    /// @param transferDetails Array of owners, recipients, amounts, and tokens for the transfers
    /// @dev Requires the from addresses to have approved at least the desired amount
    /// of tokens to msg.sender.
    function transferFrom(AllowanceTransferDetails[] calldata transferDetails) external;

    /// @notice Enables performing a "lockdown" of the sender's Permit2 identity
    /// by batch revoking approvals
    /// @param approvals Array of approvals to revoke.
    function lockdown(TokenSpenderPair[] calldata approvals) external;

    /// @notice Invalidate nonces for a given (token, spender) pair
    /// @param token The token to invalidate nonces for
    /// @param spender The spender to invalidate nonces for
    /// @param newNonce The new nonce to set. Invalidates all nonces less than it.
    /// @dev Can't invalidate more than 2**16 nonces per transaction.
    function invalidateNonces(address token, address spender, uint48 newNonce) external;
}

// File: contracts\impermax-v3-core\interfaces\IBorrowable.sol

pragma solidity >=0.5.0;

interface IBorrowable {

	/*** Impermax ERC20 ***/
	
	event Transfer(address indexed from, address indexed to, uint value);
	event Approval(address indexed owner, address indexed spender, uint value);
	
	function name() external view returns (string memory);
	function symbol() external view returns (string memory);
	function decimals() external view returns (uint8);
	function totalSupply() external view returns (uint);
	function balanceOf(address owner) external view returns (uint);
	function allowance(address owner, address spender) external view returns (uint);
	function approve(address spender, uint value) external returns (bool);
	function transfer(address to, uint value) external returns (bool);
	function transferFrom(address from, address to, uint value) external returns (bool);
	
	function DOMAIN_SEPARATOR() external view returns (bytes32);
	function PERMIT_TYPEHASH() external pure returns (bytes32);
	function nonces(address owner) external view returns (uint);
	function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
	
	/*** Pool Token ***/
	
	event Mint(address indexed sender, address indexed minter, uint mintAmount, uint mintTokens);
	event Redeem(address indexed sender, address indexed redeemer, uint redeemAmount, uint redeemTokens);
	event Sync(uint totalBalance);
	
	function underlying() external view returns (address);
	function factory() external view returns (address);
	function totalBalance() external view returns (uint);
	function MINIMUM_LIQUIDITY() external pure returns (uint);

	function exchangeRate() external returns (uint);
	function mint(address minter) external returns (uint mintTokens);
	function redeem(address redeemer) external returns (uint redeemAmount);
	function skim(address to) external;
	function sync() external;
	
	function _setFactory() external;
	
	/*** Borrowable ***/

	event BorrowApproval(address indexed owner, address indexed spender, uint value);
	event Borrow(address indexed sender, uint256 indexed tokenId, address indexed receiver, uint borrowAmount, uint repayAmount, uint accountBorrowsPrior, uint accountBorrows, uint totalBorrows);
	event Liquidate(address indexed sender, uint256 indexed tokenId, address indexed liquidator, uint seizeTokenId, uint repayAmount, uint accountBorrowsPrior, uint accountBorrows, uint totalBorrows);
	event RestructureDebt(uint256 indexed tokenId, uint reduceToRatio, uint repayAmount, uint accountBorrowsPrior, uint accountBorrows, uint totalBorrows);
	
	function collateral() external view returns (address);
	function reserveFactor() external view returns (uint);
	function exchangeRateLast() external view returns (uint);
	function borrowIndex() external view returns (uint);
	function totalBorrows() external view returns (uint);
	function borrowAllowance(address owner, address spender) external view returns (uint);
	function borrowBalance(uint tokenId) external view returns (uint);	
	function currentBorrowBalance(uint tokenId) external returns (uint);	
	
	function BORROW_PERMIT_TYPEHASH() external pure returns (bytes32);
	function borrowApprove(address spender, uint256 value) external returns (bool);
	function borrowPermit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
	function borrow(uint256 tokenId, address receiver, uint borrowAmount, bytes calldata data) external;
	function liquidate(uint256 tokenId, uint repayAmount, address liquidator, bytes calldata data) external returns (uint seizeTokenId);
	function restructureDebt(uint256 tokenId, uint256 reduceToRatio) external;
	
	/*** Borrowable Interest Rate Model ***/

	event AccrueInterest(uint interestAccumulated, uint borrowIndex, uint totalBorrows);
	event CalculateKinkBorrowRate(uint kinkBorrowRate);
	event CalculateBorrowRate(uint borrowRate);
	
	function KINK_BORROW_RATE_MAX() external pure returns (uint);
	function KINK_BORROW_RATE_MIN() external pure returns (uint);
	function KINK_MULTIPLIER() external pure returns (uint);
	function borrowRate() external view returns (uint);
	function kinkBorrowRate() external view returns (uint);
	function kinkUtilizationRate() external view returns (uint);
	function adjustSpeed() external view returns (uint);
	function rateUpdateTimestamp() external view returns (uint32);
	function accrualTimestamp() external view returns (uint32);
	
	function accrueInterest() external;
	
	/*** Borrowable Setter ***/

	event NewReserveFactor(uint newReserveFactor);
	event NewKinkUtilizationRate(uint newKinkUtilizationRate);
	event NewAdjustSpeed(uint newAdjustSpeed);
	event NewDebtCeiling(uint newDebtCeiling);

	function RESERVE_FACTOR_MAX() external pure returns (uint);
	function KINK_UR_MIN() external pure returns (uint);
	function KINK_UR_MAX() external pure returns (uint);
	function ADJUST_SPEED_MIN() external pure returns (uint);
	function ADJUST_SPEED_MAX() external pure returns (uint);
	
	function _initialize (
		string calldata _name, 
		string calldata _symbol,
		address _underlying, 
		address _collateral
	) external;
	function _setReserveFactor(uint newReserveFactor) external;
	function _setKinkUtilizationRate(uint newKinkUtilizationRate) external;
	function _setAdjustSpeed(uint newAdjustSpeed) external;
}

// File: contracts\impermax-v3-core\interfaces\IPoolToken.sol

pragma solidity >=0.5.0;

interface IPoolToken {

	/*** Impermax ERC20 ***/
	
	event Transfer(address indexed from, address indexed to, uint value);
	event Approval(address indexed owner, address indexed spender, uint value);
	
	function name() external view returns (string memory);
	function symbol() external view returns (string memory);
	function decimals() external view returns (uint8);
	function totalSupply() external view returns (uint);
	function balanceOf(address owner) external view returns (uint);
	function allowance(address owner, address spender) external view returns (uint);
	function approve(address spender, uint value) external returns (bool);
	function transfer(address to, uint value) external returns (bool);
	function transferFrom(address from, address to, uint value) external returns (bool);
	
	function DOMAIN_SEPARATOR() external view returns (bytes32);
	function PERMIT_TYPEHASH() external pure returns (bytes32);
	function nonces(address owner) external view returns (uint);
	function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
	
	/*** Pool Token ***/
	
	event Mint(address indexed sender, address indexed minter, uint mintAmount, uint mintTokens);
	event Redeem(address indexed sender, address indexed redeemer, uint redeemAmount, uint redeemTokens);
	event Sync(uint totalBalance);
	
	function underlying() external view returns (address);
	function factory() external view returns (address);
	function totalBalance() external view returns (uint);
	function MINIMUM_LIQUIDITY() external pure returns (uint);

	function exchangeRate() external returns (uint);
	function mint(address minter) external returns (uint mintTokens);
	function redeem(address redeemer) external returns (uint redeemAmount);
	function skim(address to) external;
	function sync() external;
	
	function _setFactory() external;
}

// File: contracts\libraries\ImpermaxPermit.sol

pragma solidity >=0.5.0;
library ImpermaxPermit {

	address constant PERMIT2_ADDRESS = 0x000000000022D473030F116dDEE9F6B43aC78BA3;
	
	enum PermitType {
		PERMIT1,
		PERMIT_NFT,
		PERMIT2_SINGLE,
		PERMIT2_BATCH,
		PERMIT_BORROW
	}
	struct Permit {
		PermitType permitType;
		bytes permitData;
		bytes signature;
	}
	struct Permit1Data {
		address token;
		uint amount;
		uint deadline;
	}
	struct PermitNftData {
		address erc721;
		uint tokenId;
		uint deadline;
	}
	
	bytes32 constant UPPER_BIT_MASK = (0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
	function decodeSignature(bytes memory signature) private pure returns (bytes32 r, bytes32 s, uint8 v) {
		if (signature.length == 65) {
			(r, s) = abi.decode(signature, (bytes32, bytes32));
			v = uint8(signature[64]);
		} else if (signature.length == 64) {
			// EIP-2098
			bytes32 vs;
			(r, vs) = abi.decode(signature, (bytes32, bytes32));
			s = vs & UPPER_BIT_MASK;
			v = uint8(uint256(vs >> 255)) + 27;
		} else {
			revert("ImpermaxRouter: INVALID_SIGNATURE_LENGTH");
		}
	}
		
	function permit1(
		address token,
		uint amount, 
		uint deadline,
		bytes memory signature
	) private {	
		(bytes32 r, bytes32 s, uint8 v) = decodeSignature(signature);
		IPoolToken(token).permit(msg.sender, address(this), amount, deadline, v, r, s);
	}
	
	function permitNft(
		address erc721, 
		uint tokenId, 
		uint deadline,
		bytes memory signature
	) private {
		(bytes32 r, bytes32 s, uint8 v) = decodeSignature(signature);
		IERC721(erc721).permit(address(this), tokenId, deadline, v, r, s);
	}
		
	function permitBorrow(
		address borrowable,
		uint amount, 
		uint deadline,
		bytes memory signature
	) private {	
		(bytes32 r, bytes32 s, uint8 v) = decodeSignature(signature);
		IBorrowable(borrowable).borrowPermit(msg.sender, address(this), amount, deadline, v, r, s);
	}
	
	function executePermit(Permit memory permit) public {
		if (permit.permitType == PermitType.PERMIT1) {
			Permit1Data memory decoded = abi.decode(permit.permitData, (Permit1Data));
			permit1(
				decoded.token,
				decoded.amount,
				decoded.deadline,
				permit.signature
			);
		}
		else if (permit.permitType == PermitType.PERMIT_NFT) {
			PermitNftData memory decoded = abi.decode(permit.permitData, (PermitNftData));
			permitNft(
				decoded.erc721,
				decoded.tokenId,
				decoded.deadline,
				permit.signature
			);
		}
		else if (permit.permitType == PermitType.PERMIT2_SINGLE) {
			IAllowanceTransfer.PermitSingle memory decoded = abi.decode(permit.permitData, (IAllowanceTransfer.PermitSingle));
			IAllowanceTransfer(PERMIT2_ADDRESS).permit(msg.sender, decoded, permit.signature);
		}
		else if (permit.permitType == PermitType.PERMIT2_BATCH) {
			IAllowanceTransfer.PermitBatch memory decoded = abi.decode(permit.permitData, (IAllowanceTransfer.PermitBatch));
			IAllowanceTransfer(PERMIT2_ADDRESS).permit(msg.sender, decoded, permit.signature);
		}
		else if (permit.permitType == PermitType.PERMIT_BORROW) {
			Permit1Data memory decoded = abi.decode(permit.permitData, (Permit1Data));
			permitBorrow(
				decoded.token,
				decoded.amount,
				decoded.deadline,
				permit.signature
			);
		}
		else revert("ImpermaxRouter: INVALID_PERMIT");
	}
	
	function executePermits(Permit[] memory permits) public {
		for (uint i = 0; i < permits.length; i++) {
			executePermit(permits[i]);
		}
	}
	
	function executePermits(bytes memory permitsData) public {
		Permit[] memory permits = abi.decode(permitsData, (Permit[]));
		executePermits(permits);
	}
	
	function safeTransferFrom(address token, address from, address to, uint256 value) external {
		uint allowance = IERC20(token).allowance(from, address(this));
		if (allowance >= value) return TransferHelper.safeTransferFrom(token, from, to, value);
		IAllowanceTransfer(PERMIT2_ADDRESS).transferFrom(from, to, safe160(value), token);
	}
	
    function safe160(uint n) private pure returns (uint160) {
        require(n < 2**160, "Impermax: SAFE160");
        return uint160(n);
    }
}

// File: contracts\libraries\Actions.sol

pragma solidity =0.5.16;

library Actions {

	enum Type {
		BORROW, 
		REPAY_USER,
		REPAY_ROUTER,
		WITHDRAW_TOKEN,
		WITHDRAW_ETH,
		NO_ACTION,
		MINT_UNIV2_EMPTY, 
		MINT_UNIV2_INTERNAL, 
		MINT_UNIV2, 
		REDEEM_UNIV2,
		BORROW_AND_MINT_UNIV2,
		MINT_UNIV3_EMPTY, 
		MINT_UNIV3_INTERNAL, 
		MINT_UNIV3, 
		REDEEM_UNIV3,
		BORROW_AND_MINT_UNIV3
	}
	struct Action {
		Type actionType;
		bytes actionData;
		bytes nextAction;
	}
	
	struct BorrowData {
		uint8 index;
		uint amount;
		address to;
	}
	struct RepayUserData {
		uint8 index;
		uint amountMax;
	}
	struct RepayRouterData {
		uint8 index;
		uint amountMax;
		address refundTo;
	}
	struct WithdrawTokenData {
		address token;
		address to;
	}
	struct WithdrawEthData {
		address to;
	}
	struct MintUniV2InternalData {
		uint lpAmountUser;
		uint amount0User;
		uint amount1User;
		uint amount0Router;
		uint amount1Router;
	}
	struct MintUniV2Data {
		uint lpAmountUser;
		uint amount0Desired;
		uint amount1Desired;
		uint amount0Min;
		uint amount1Min;
	}
	struct RedeemUniV2Data {
		uint percentage;
		uint amount0Min;
		uint amount1Min;
		address to;
	}
	struct BorrowAndMintUniV2Data {
		uint lpAmountUser;
		uint amount0User;
		uint amount1User;
		uint amount0Desired;
		uint amount1Desired;
		uint amount0Min;
		uint amount1Min;
	}
	struct MintUniV3EmptyData {
		uint24 fee;
		int24 tickLower;
		int24 tickUpper;
	}
	struct MintUniV3InternalData {
		uint128 liquidity;
		uint amount0User;
		uint amount1User;
		uint amount0Router;
		uint amount1Router;
	}
	struct MintUniV3Data {
		uint amount0Desired;
		uint amount1Desired;
		uint amount0Min;
		uint amount1Min;
	}
	struct RedeemUniV3Data {
		uint percentage;
		uint amount0Min;
		uint amount1Min;
		address to;
	}
	struct BorrowAndMintUniV3Data {
		uint amount0User;
		uint amount1User;
		uint amount0Desired;
		uint amount1Desired;
		uint amount0Min;
		uint amount1Min;
	}
	
	/*** Actions sorter: sorts actions and composite actions ***/
	
	function actionsSorter(Action[] memory actions, Action memory nextAction) public pure returns (Action memory) {
		require(actions.length > 0, "ImpermaxRouter: UNEXPECTED_ACTIONS_LENGTH");
		actions[actions.length-1].nextAction = abi.encode(nextAction);
		for(uint i = actions.length-1; i > 0; i--) {
			actions[i-1].nextAction = abi.encode(actions[i]);
		}
		return actions[0];
	}
	function actionsSorter(Action[] memory actions) public pure returns (Action memory) {
		return actionsSorter(actions, getNoAction());
	}
	
	/*** Action Getters ***/
	
	function _getAction(Type actionType, bytes memory actionData) private pure returns (Action memory) {
		return Action({
			actionType: actionType,
			actionData: actionData,
			nextAction: bytes("")
		});
	}
	
	function getNoAction() public pure returns (Action memory) {
		return _getAction(Type.NO_ACTION, bytes(""));
	}
	
	function getBorrowAction(uint8 index, uint amount, address to) external pure returns (Action memory) {
		return _getAction(Type.BORROW, abi.encode(BorrowData({
			index: index,
			amount: amount,
			to: to
		})));
	}
	
	function getRepayUserAction(uint8 index, uint amountMax) external pure returns (Action memory) {
		return _getAction(Type.REPAY_USER, abi.encode(RepayUserData({
			index: index,
			amountMax: amountMax
		})));
	}
	function getRepayRouterAction(uint8 index, uint amountMax, address refundTo) external pure returns (Action memory) {
		return _getAction(Type.REPAY_ROUTER, abi.encode(RepayRouterData({
			index: index,
			amountMax: amountMax,
			refundTo: refundTo
		})));
	}
	
	function getWithdrawTokenAction(address token, address to) external pure returns (Action memory) {
		return _getAction(Type.WITHDRAW_TOKEN, abi.encode(WithdrawTokenData({
			token: token,
			to: to
		})));
	}
	
	function getWithdrawEthAction(address to) external pure returns (Action memory) {
		return _getAction(Type.WITHDRAW_ETH, abi.encode(WithdrawEthData({
			to: to
		})));
	}
	
	function getMintUniV2EmptyAction() external pure returns (Action memory) {
		return _getAction(Type.MINT_UNIV2_EMPTY, bytes(""));
	}
	function getMintUniV2InternalAction(uint lpAmountUser, uint amount0User, uint amount1User, uint amount0Router, uint amount1Router) external pure returns (Action memory) {
		return _getAction(Type.MINT_UNIV2_INTERNAL, abi.encode(MintUniV2InternalData({
			lpAmountUser: lpAmountUser,
			amount0User: amount0User,
			amount1User: amount1User,
			amount0Router: amount0Router,
			amount1Router: amount1Router
		})));
	}
	function getMintUniV2Action(uint lpAmountUser, uint amount0Desired, uint amount1Desired, uint amount0Min, uint amount1Min) external pure returns (Action memory) {
		return _getAction(Type.MINT_UNIV2, abi.encode(MintUniV2Data({
			lpAmountUser: lpAmountUser,
			amount0Desired: amount0Desired,
			amount1Desired: amount1Desired,
			amount0Min: amount0Min,
			amount1Min: amount1Min
		})));
	}
	
	function getRedeemUniV2Action(uint percentage, uint amount0Min, uint amount1Min, address to) external pure returns (Action memory) {
		return _getAction(Type.REDEEM_UNIV2, abi.encode(RedeemUniV2Data({
			percentage: percentage,
			amount0Min: amount0Min,
			amount1Min: amount1Min,
			to: to
		})));
	}
	
	function getMintUniV3EmptyAction(uint24 fee, int24 tickLower, int24 tickUpper) external pure returns (Action memory) {
		return _getAction(Type.MINT_UNIV3_EMPTY, abi.encode(MintUniV3EmptyData({
			fee: fee,
			tickLower: tickLower,
			tickUpper: tickUpper
		})));
	}
	
	function getBorrowAndMintUniV2Action(
		uint lpAmountUser,
		uint amount0User,
		uint amount1User,
		uint amount0Desired,	// intended as user amount + router amount
		uint amount1Desired,	// intended as user amount + router amount
		uint amount0Min,		// intended as user amount + router amount
		uint amount1Min			// intended as user amount + router amount
	) external pure returns (Action memory) {
		return _getAction(Type.BORROW_AND_MINT_UNIV2, abi.encode(BorrowAndMintUniV2Data({
			lpAmountUser: lpAmountUser,
			amount0User: amount0User,
			amount1User: amount1User,
			amount0Desired: amount0Desired,
			amount1Desired: amount1Desired,
			amount0Min: amount0Min,
			amount1Min: amount1Min
		})));
	}
	
	function getMintUniV3Action(uint amount0Desired, uint amount1Desired, uint amount0Min, uint amount1Min) external pure returns (Action memory) {
		return _getAction(Type.MINT_UNIV3, abi.encode(MintUniV3Data({
			amount0Desired: amount0Desired,
			amount1Desired: amount1Desired,
			amount0Min: amount0Min,
			amount1Min: amount1Min
		})));
	}
	
	function getMintUniV3InternalAction(uint128 liquidity, uint amount0User, uint amount1User, uint amount0Router, uint amount1Router) external pure returns (Action memory) {
		return _getAction(Type.MINT_UNIV3_INTERNAL, abi.encode(MintUniV3InternalData({
			liquidity: liquidity,
			amount0User: amount0User,
			amount1User: amount1User,
			amount0Router: amount0Router,
			amount1Router: amount1Router
		})));
	}
	
	function getRedeemUniV3Action(uint percentage, uint amount0Min, uint amount1Min, address to) external pure returns (Action memory) {
		return _getAction(Type.REDEEM_UNIV3, abi.encode(RedeemUniV3Data({
			percentage: percentage,
			amount0Min: amount0Min,
			amount1Min: amount1Min,
			to: to
		})));
	}
	
	function getBorrowAndMintUniV3Action(
		uint amount0User,
		uint amount1User,
		uint amount0Desired,	// intended as user amount + router amount
		uint amount1Desired,	// intended as user amount + router amount
		uint amount0Min,		// intended as user amount + router amount
		uint amount1Min			// intended as user amount + router amount
	) external pure returns (Action memory) {
		return _getAction(Type.BORROW_AND_MINT_UNIV3, abi.encode(BorrowAndMintUniV3Data({
			amount0User: amount0User,
			amount1User: amount1User,
			amount0Desired: amount0Desired,
			amount1Desired: amount1Desired,
			amount0Min: amount0Min,
			amount1Min: amount1Min
		})));
	}
}

// File: contracts\impermax-v3-core\interfaces\IFactory.sol

pragma solidity >=0.5.0;

interface IFactory {
	event LendingPoolInitialized(address indexed nftlp, address indexed token0, address indexed token1,
		address collateral, address borrowable0, address borrowable1, uint lendingPoolId);
	event NewPendingAdmin(address oldPendingAdmin, address newPendingAdmin);
	event NewAdmin(address oldAdmin, address newAdmin);
	event NewReservesPendingAdmin(address oldReservesPendingAdmin, address newReservesPendingAdmin);
	event NewReservesAdmin(address oldReservesAdmin, address newReservesAdmin);
	event NewReservesManager(address oldReservesManager, address newReservesManager);
	
	function admin() external view returns (address);
	function pendingAdmin() external view returns (address);
	function reservesAdmin() external view returns (address);
	function reservesPendingAdmin() external view returns (address);
	function reservesManager() external view returns (address);

	function getLendingPool(address nftlp) external view returns (
		bool initialized, 
		uint24 lendingPoolId, 
		address collateral, 
		address borrowable0, 
		address borrowable1
	);
	function allLendingPools(uint) external view returns (address nftlp);
	function allLendingPoolsLength() external view returns (uint);
	
	function bDeployer() external view returns (address);
	function cDeployer() external view returns (address);

	function createCollateral(address nftlp) external returns (address collateral);
	function createBorrowable0(address nftlp) external returns (address borrowable0);
	function createBorrowable1(address nftlp) external returns (address borrowable1);
	function initializeLendingPool(address nftlp) external;

	function _setPendingAdmin(address newPendingAdmin) external;
	function _acceptAdmin() external;
	function _setReservesPendingAdmin(address newPendingAdmin) external;
	function _acceptReservesAdmin() external;
	function _setReservesManager(address newReservesManager) external;
}

// File: contracts\impermax-v3-core\interfaces\IImpermaxCallee.sol

pragma solidity >=0.5.0;

interface IImpermaxCallee {
    function impermaxV3Borrow(address sender, uint256 tokenId, uint borrowAmount, bytes calldata data) external;
    function impermaxV3Redeem(address sender, uint256 tokenId, uint256 redeemTokenId, bytes calldata data) external;
}

// File: contracts\ImpermaxV3BaseRouter01.sol

pragma solidity =0.5.16;












contract ImpermaxV3BaseRouter01 is IV3BaseRouter01, IImpermaxCallee {
	using SafeMath for uint;

	address public factory;
	address public WETH;

	modifier permit(bytes memory permitsData) {
		ImpermaxPermit.executePermits(permitsData);
		_;
	}

	constructor(address _factory, address _WETH) public {
		factory = _factory;
		WETH = _WETH;
	}

	function () external payable {
		assert(msg.sender == WETH); // only accept ETH via fallback from the WETH contract
	}
	
	/*** Data Structures ***/
	
	// callbacks
	struct BorrowCallbackData {
		LendingPool pool;
		uint8 borrowableIndex;
		address msgSender;
		Actions.Action nextAction;
	}
	struct RedeemCallbackData {
		LendingPool pool;
		address msgSender;
		address redeemTo;
		uint amount0Min;
		uint amount1Min;
		Actions.Action nextAction;
	}
	
	/*** Primitive Actions ***/

	function _borrow(
		LendingPool memory pool,
		uint8 index,
		uint tokenId,
		address msgSender,
		uint amount,
		address to,
		Actions.Action memory nextAction
	) internal {
		bytes memory encoded = nextAction.actionType == Actions.Type.NO_ACTION || to != address(this)
			? bytes("")
			: abi.encode(BorrowCallbackData({
				pool: pool,
				borrowableIndex: index,
				msgSender: msgSender,
				nextAction: nextAction
			}));
		IBorrowable(pool.borrowables[index]).borrow(tokenId, to, amount, encoded);	
	}

	function _repayAmount(
		address borrowable,
		uint tokenId, 
		uint amountMax
	) internal returns (uint amount) { 
		uint borrowedAmount = IBorrowable(borrowable).currentBorrowBalance(tokenId);
		amount = Math.min(amountMax, borrowedAmount);
	}
	function _repayUser(
		LendingPool memory pool,
		uint8 index,
		uint tokenId,
		address msgSender,
		uint amountMax
	) internal {
		address borrowable = pool.borrowables[index];
		uint repayAmount = _repayAmount(borrowable, tokenId, amountMax);
		if (repayAmount == 0) return;
		ImpermaxPermit.safeTransferFrom(pool.tokens[index], msgSender, borrowable, repayAmount);
		IBorrowable(borrowable).borrow(tokenId, address(0), 0, new bytes(0));
	}
	function _repayRouter(
		LendingPool memory pool,
		uint8 index,
		uint tokenId,
		uint amountMax,
		address refundTo
	) internal {
		address borrowable = pool.borrowables[index];
		uint routerBalance = IERC20(pool.tokens[index]).balanceOf(address(this));
		amountMax = Math.min(amountMax, routerBalance);
		uint repayAmount = _repayAmount(borrowable, tokenId, amountMax);
		if (routerBalance > repayAmount && refundTo != address(this)) TransferHelper.safeTransfer(pool.tokens[index], refundTo, routerBalance - repayAmount);
		if (repayAmount == 0) return;
		TransferHelper.safeTransfer(pool.tokens[index], borrowable, repayAmount);
		IBorrowable(borrowable).borrow(tokenId, address(0), 0, new bytes(0));
	}
	
	function _withdrawToken(
		address token,
		address to
	) internal {
		uint routerBalance = IERC20(token).balanceOf(address(this));
		if (routerBalance > 0) TransferHelper.safeTransfer(token, to, routerBalance);
	}
	
	function _withdrawEth(
		address to
	) internal {
		uint routerBalance = IERC20(WETH).balanceOf(address(this));
		if (routerBalance == 0) return;
		IWETH(WETH).withdraw(routerBalance);
		TransferHelper.safeTransferETH(to, routerBalance);
	}

	/*** EXECUTE ***/
	
	function _execute(
		LendingPool memory pool,
		uint tokenId,
		address msgSender,
		Actions.Action memory action
	) internal returns (uint) {
		if (action.actionType == Actions.Type.NO_ACTION) return tokenId;
		Actions.Action memory nextAction = abi.decode(action.nextAction, (Actions.Action));
		if (action.actionType == Actions.Type.BORROW) {
			Actions.BorrowData memory decoded = abi.decode(action.actionData, (Actions.BorrowData));
			_borrow(
				pool,
				decoded.index,
				tokenId,
				msgSender,
				decoded.amount,
				decoded.to,
				nextAction
			);
			if (decoded.to == address(this)) return tokenId;
		}
		else if (action.actionType == Actions.Type.REPAY_USER) {
			Actions.RepayUserData memory decoded = abi.decode(action.actionData, (Actions.RepayUserData));
			_repayUser(
				pool,
				decoded.index,
				tokenId,
				msgSender,
				decoded.amountMax
			);
		}
		else if (action.actionType == Actions.Type.REPAY_ROUTER) {
			Actions.RepayRouterData memory decoded = abi.decode(action.actionData, (Actions.RepayRouterData));
			_repayRouter(
				pool,
				decoded.index,
				tokenId,
				decoded.amountMax,
				decoded.refundTo
			);
		}
		else if (action.actionType == Actions.Type.WITHDRAW_TOKEN) {
			Actions.WithdrawTokenData memory decoded = abi.decode(action.actionData, (Actions.WithdrawTokenData));
			_withdrawToken(
				decoded.token,
				decoded.to
			);
		}
		else if (action.actionType == Actions.Type.WITHDRAW_ETH) {
			Actions.WithdrawEthData memory decoded = abi.decode(action.actionData, (Actions.WithdrawEthData));
			_withdrawEth(
				decoded.to
			);
		}
		else revert("ImpermaxRouter: INVALID_ACTION");
		
		return _execute(
			pool,
			tokenId,
			msgSender,
			nextAction
		);
	}
	
	/*** External ***/
	
	function _checkFirstAction(Actions.Type actionType) internal; 
	
	function execute(
		address nftlp,
		uint tokenId,
		bytes calldata actionsData,
		bytes calldata permitsData,
		bool withCollateralTransfer
	) external payable permit(permitsData) {
		if (msg.value > 0) {
			IWETH(WETH).deposit.value(msg.value)();
		}
		
		Actions.Action[] memory actions = abi.decode(actionsData, (Actions.Action[]));
		
		LendingPool memory pool = getLendingPool(nftlp);
		if (tokenId != uint(-1)) {
			if (withCollateralTransfer) {
				IERC721(pool.collateral).transferFrom(msg.sender, address(this), tokenId);
			} else {
				require(IERC721(pool.collateral).ownerOf(tokenId) == msg.sender, "ImpermaxRouter: UNAUTHORIZED");
			}
		} else {
			_checkFirstAction(actions[0].actionType);
			withCollateralTransfer = true;
		}
			
		tokenId = _execute(
			pool,
			tokenId,
			msg.sender,
			Actions.actionsSorter(actions)
		);
		
		if (withCollateralTransfer) {
			IERC721(pool.collateral).transferFrom(address(this), msg.sender, tokenId);
		}
	}
	
	/*** Callbacks ***/
	
	function impermaxV3Borrow(address sender, uint256 tokenId, uint borrowAmount, bytes calldata data) external {
		borrowAmount;
		BorrowCallbackData memory decoded = abi.decode(data, (BorrowCallbackData));
		
		// only succeeds if called by a borrowable and if that borrowable has been called by the router
		address declaredCaller = getBorrowable(decoded.pool.nftlp, decoded.borrowableIndex);
		require(sender == address(this), "ImpermaxRouter: SENDER_NOT_ROUTER");
		require(msg.sender == declaredCaller, "ImpermaxRouter: UNAUTHORIZED_CALLER");
		
		_execute(
			decoded.pool,
			tokenId,
			decoded.msgSender,
			decoded.nextAction
		);
	}
	
	function _redeemStep2(LendingPool memory pool, uint redeemTokenId, uint amount0Min, uint amount1Min, address to) internal;
	function impermaxV3Redeem(address sender, uint256 tokenId, uint256 redeemTokenId, bytes calldata data) external {
		RedeemCallbackData memory decoded = abi.decode(data, (RedeemCallbackData));
		
		// only succeeds if called by a collateral and if that collateral has been called by the router
		address declaredCaller = getCollateral(decoded.pool.nftlp);
		require(sender == address(this), "ImpermaxRouter: SENDER_NOT_ROUTER");
		require(msg.sender == declaredCaller, "ImpermaxRouter: UNAUTHORIZED_CALLER");
		
		_redeemStep2(
			decoded.pool,
			redeemTokenId,
			decoded.amount0Min,
			decoded.amount1Min,
			decoded.redeemTo
		);
		
		_execute(
			decoded.pool,
			tokenId,
			decoded.msgSender,
			decoded.nextAction
		);
	}
	
	function onERC721Received(address operator, address from, uint256 tokenId, bytes calldata data) external pure returns (bytes4 returnValue) {
		operator; from; tokenId; data;
		return bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"));
	}
	
	/*** Utilities ***/
	
	function getBorrowable(address nftlp, uint8 index) public view returns (address borrowable) {
		require(index < 2, "ImpermaxRouter: INDEX_TOO_HIGH");
		(,,,address borrowable0, address borrowable1) = IFactory(factory).getLendingPool(nftlp);
		return index == 0 ? borrowable0 : borrowable1;
	}
	function getCollateral(address nftlp) public view returns (address collateral) {
		(,,collateral,,) = IFactory(factory).getLendingPool(nftlp);
	}
	
	function getLendingPool(address nftlp) public view returns (LendingPool memory pool) {
		pool.nftlp = nftlp;
		(,,pool.collateral,pool.borrowables[0],pool.borrowables[1]) = 
			IFactory(factory).getLendingPool(nftlp);
		pool.tokens[0] = IBorrowable(pool.borrowables[0]).underlying();
		pool.tokens[1] = IBorrowable(pool.borrowables[1]).underlying();
	}
}

// File: contracts\libraries\TickMath.sol

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0 <0.8.0;

/// @title Math library for computing sqrt prices from ticks and vice versa
/// @notice Computes sqrt price for ticks of size 1.0001, i.e. sqrt(1.0001^tick) as fixed point Q64.96 numbers. Supports
/// prices between 2**-128 and 2**128
library TickMath {
    /// @dev The minimum tick that may be passed to #getSqrtRatioAtTick computed from log base 1.0001 of 2**-128
    int24 internal constant MIN_TICK = -887272;
    /// @dev The maximum tick that may be passed to #getSqrtRatioAtTick computed from log base 1.0001 of 2**128
    int24 internal constant MAX_TICK = -MIN_TICK;

    /// @dev The minimum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MIN_TICK)
    uint160 internal constant MIN_SQRT_RATIO = 4295128739;
    /// @dev The maximum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MAX_TICK)
    uint160 internal constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;

    /// @notice Calculates sqrt(1.0001^tick) * 2^96
    /// @dev Throws if |tick| > max tick
    /// @param tick The input tick for the above formula
    /// @return sqrtPriceX96 A Fixed point Q64.96 number representing the sqrt of the ratio of the two assets (token1/token0)
    /// at the given tick
    function getSqrtRatioAtTick(int24 tick) internal pure returns (uint160 sqrtPriceX96) {
        uint256 absTick = tick < 0 ? uint256(-int256(tick)) : uint256(int256(tick));
        require(absTick <= uint256(MAX_TICK), 'TickMath: T');

        uint256 ratio = absTick & 0x1 != 0 ? 0xfffcb933bd6fad37aa2d162d1a594001 : 0x100000000000000000000000000000000;
        if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128;
        if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128;
        if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128;
        if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128;
        if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128;
        if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128;
        if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128;
        if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128;
        if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128;
        if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128;
        if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128;
        if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128;
        if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128;
        if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128;
        if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128;
        if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128;
        if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128;
        if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128;
        if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128;

        if (tick > 0) ratio = uint256(-1) / ratio;

        // this divides by 1<<32 rounding up to go from a Q128.128 to a Q128.96.
        // we then downcast because we know the result always fits within 160 bits due to our tick input constraint
        // we round up in the division so getTickAtSqrtRatio of the output price is always consistent
        sqrtPriceX96 = uint160((ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1));
    }

    /// @notice Calculates the greatest tick value such that getRatioAtTick(tick) <= ratio
    /// @dev Throws in case sqrtPriceX96 < MIN_SQRT_RATIO, as MIN_SQRT_RATIO is the lowest value getRatioAtTick may
    /// ever return.
    /// @param sqrtPriceX96 The sqrt ratio for which to compute the tick as a Q64.96
    /// @return tick The greatest tick for which the ratio is less than or equal to the input ratio
    function getTickAtSqrtRatio(uint160 sqrtPriceX96) internal pure returns (int24 tick) {
        // second inequality must be < because the price can never reach the price at the max tick
        require(sqrtPriceX96 >= MIN_SQRT_RATIO && sqrtPriceX96 < MAX_SQRT_RATIO, 'TickMath: R');
        uint256 ratio = uint256(sqrtPriceX96) << 32;

        uint256 r = ratio;
        uint256 msb = 0;

        assembly {
            let f := shl(7, gt(r, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF))
            msb := or(msb, f)
            r := shr(f, r)
        }
        assembly {
            let f := shl(6, gt(r, 0xFFFFFFFFFFFFFFFF))
            msb := or(msb, f)
            r := shr(f, r)
        }
        assembly {
            let f := shl(5, gt(r, 0xFFFFFFFF))
            msb := or(msb, f)
            r := shr(f, r)
        }
        assembly {
            let f := shl(4, gt(r, 0xFFFF))
            msb := or(msb, f)
            r := shr(f, r)
        }
        assembly {
            let f := shl(3, gt(r, 0xFF))
            msb := or(msb, f)
            r := shr(f, r)
        }
        assembly {
            let f := shl(2, gt(r, 0xF))
            msb := or(msb, f)
            r := shr(f, r)
        }
        assembly {
            let f := shl(1, gt(r, 0x3))
            msb := or(msb, f)
            r := shr(f, r)
        }
        assembly {
            let f := gt(r, 0x1)
            msb := or(msb, f)
        }

        if (msb >= 128) r = ratio >> (msb - 127);
        else r = ratio << (127 - msb);

        int256 log_2 = (int256(msb) - 128) << 64;

        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(63, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(62, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(61, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(60, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(59, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(58, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(57, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(56, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(55, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(54, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(53, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(52, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(51, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(50, f))
        }

        int256 log_sqrt10001 = log_2 * 255738958999603826347141; // 128.128 number

        int24 tickLow = int24((log_sqrt10001 - 3402992956809132418596140100660247210) >> 128);
        int24 tickHi = int24((log_sqrt10001 + 291339464771989622907027621153398088495) >> 128);

        tick = tickLow == tickHi ? tickLow : getSqrtRatioAtTick(tickHi) <= sqrtPriceX96 ? tickHi : tickLow;
    }
}

// File: contracts\libraries\FullMath.sol

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.8.0;

/// @title Contains 512-bit math functions
/// @notice Facilitates multiplication and division that can have overflow of an intermediate value without any loss of precision
/// @dev Handles "phantom overflow" i.e., allows multiplication and division where an intermediate value overflows 256 bits
library FullMath {
    /// @notice Calculates floor(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
    /// @param a The multiplicand
    /// @param b The multiplier
    /// @param denominator The divisor
    /// @return result The 256-bit result
    /// @dev Credit to Remco Bloemen under MIT license https://xn--2-umb.com/21/muldiv
    function mulDiv(
        uint256 a,
        uint256 b,
        uint256 denominator
    ) internal pure returns (uint256 result) {
        // 512-bit multiply [prod1 prod0] = a * b
        // Compute the product mod 2**256 and mod 2**256 - 1
        // then use the Chinese Remainder Theorem to reconstruct
        // the 512 bit result. The result is stored in two 256
        // variables such that product = prod1 * 2**256 + prod0
        uint256 prod0; // Least significant 256 bits of the product
        uint256 prod1; // Most significant 256 bits of the product
        assembly {
            let mm := mulmod(a, b, not(0))
            prod0 := mul(a, b)
            prod1 := sub(sub(mm, prod0), lt(mm, prod0))
        }

        // Handle non-overflow cases, 256 by 256 division
        if (prod1 == 0) {
            require(denominator > 0);
            assembly {
                result := div(prod0, denominator)
            }
            return result;
        }

        // Make sure the result is less than 2**256.
        // Also prevents denominator == 0
        require(denominator > prod1);

        ///////////////////////////////////////////////
        // 512 by 256 division.
        ///////////////////////////////////////////////

        // Make division exact by subtracting the remainder from [prod1 prod0]
        // Compute remainder using mulmod
        uint256 remainder;
        assembly {
            remainder := mulmod(a, b, denominator)
        }
        // Subtract 256 bit number from 512 bit number
        assembly {
            prod1 := sub(prod1, gt(remainder, prod0))
            prod0 := sub(prod0, remainder)
        }

        // Factor powers of two out of denominator
        // Compute largest power of two divisor of denominator.
        // Always >= 1.
        uint256 twos = -denominator & denominator;
        // Divide denominator by power of two
        assembly {
            denominator := div(denominator, twos)
        }

        // Divide [prod1 prod0] by the factors of two
        assembly {
            prod0 := div(prod0, twos)
        }
        // Shift in bits from prod1 into prod0. For this we need
        // to flip `twos` such that it is 2**256 / twos.
        // If twos is zero, then it becomes one
        assembly {
            twos := add(div(sub(0, twos), twos), 1)
        }
        prod0 |= prod1 * twos;

        // Invert denominator mod 2**256
        // Now that denominator is an odd number, it has an inverse
        // modulo 2**256 such that denominator * inv = 1 mod 2**256.
        // Compute the inverse by starting with a seed that is correct
        // correct for four bits. That is, denominator * inv = 1 mod 2**4
        uint256 inv = (3 * denominator) ^ 2;
        // Now use Newton-Raphson iteration to improve the precision.
        // Thanks to Hensel's lifting lemma, this also works in modular
        // arithmetic, doubling the correct bits in each step.
        inv *= 2 - denominator * inv; // inverse mod 2**8
        inv *= 2 - denominator * inv; // inverse mod 2**16
        inv *= 2 - denominator * inv; // inverse mod 2**32
        inv *= 2 - denominator * inv; // inverse mod 2**64
        inv *= 2 - denominator * inv; // inverse mod 2**128
        inv *= 2 - denominator * inv; // inverse mod 2**256

        // Because the division is now exact we can divide by multiplying
        // with the modular inverse of denominator. This will give us the
        // correct result modulo 2**256. Since the precoditions guarantee
        // that the outcome is less than 2**256, this is the final result.
        // We don't need to compute the high bits of the result and prod1
        // is no longer required.
        result = prod0 * inv;
        return result;
    }

    /// @notice Calculates ceil(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
    /// @param a The multiplicand
    /// @param b The multiplier
    /// @param denominator The divisor
    /// @return result The 256-bit result
    function mulDivRoundingUp(
        uint256 a,
        uint256 b,
        uint256 denominator
    ) internal pure returns (uint256 result) {
        result = mulDiv(a, b, denominator);
        if (mulmod(a, b, denominator) > 0) {
            require(result < uint256(-1));
            result++;
        }
    }
}

// File: contracts\libraries\LiquidityAmounts.sol

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Liquidity amount functions
/// @notice Provides functions for computing liquidity amounts from token amounts and prices
library LiquidityAmounts {
    uint constant Q96 = 2**96;
	
    /// @notice Downcasts uint256 to uint128
    /// @param x The uint258 to be downcasted
    /// @return y The passed value, downcasted to uint128
    function toUint128(uint256 x) private pure returns (uint128 y) {
        require((y = uint128(x)) == x);
    }

    /// @notice Computes the amount of liquidity received for a given amount of token0 and price range
    /// @dev Calculates amount0 * (sqrt(upper) * sqrt(lower)) / (sqrt(upper) - sqrt(lower))
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param amount0 The amount0 being sent in
    /// @return liquidity The amount of returned liquidity
    function getLiquidityForAmount0(
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint256 amount0
    ) internal pure returns (uint128 liquidity) {
        if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);
        uint256 intermediate = FullMath.mulDiv(sqrtRatioAX96, sqrtRatioBX96, Q96);
        return toUint128(FullMath.mulDiv(amount0, intermediate, sqrtRatioBX96 - sqrtRatioAX96));
    }

    /// @notice Computes the amount of liquidity received for a given amount of token1 and price range
    /// @dev Calculates amount1 / (sqrt(upper) - sqrt(lower)).
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param amount1 The amount1 being sent in
    /// @return liquidity The amount of returned liquidity
    function getLiquidityForAmount1(
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint256 amount1
    ) internal pure returns (uint128 liquidity) {
        if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);
        return toUint128(FullMath.mulDiv(amount1, Q96, sqrtRatioBX96 - sqrtRatioAX96));
    }

    /// @notice Computes the maximum amount of liquidity received for a given amount of token0, token1, the current
    /// pool prices and the prices at the tick boundaries
    /// @param sqrtRatioX96 A sqrt price representing the current pool prices
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param amount0 The amount of token0 being sent in
    /// @param amount1 The amount of token1 being sent in
    /// @return liquidity The maximum amount of liquidity received
    function getLiquidityForAmounts(
        uint160 sqrtRatioX96,
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint256 amount0,
        uint256 amount1
    ) internal pure returns (uint128 liquidity) {
        if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);

        if (sqrtRatioX96 <= sqrtRatioAX96) {
            liquidity = getLiquidityForAmount0(sqrtRatioAX96, sqrtRatioBX96, amount0);
        } else if (sqrtRatioX96 < sqrtRatioBX96) {
            uint128 liquidity0 = getLiquidityForAmount0(sqrtRatioX96, sqrtRatioBX96, amount0);
            uint128 liquidity1 = getLiquidityForAmount1(sqrtRatioAX96, sqrtRatioX96, amount1);

            liquidity = liquidity0 < liquidity1 ? liquidity0 : liquidity1;
        } else {
            liquidity = getLiquidityForAmount1(sqrtRatioAX96, sqrtRatioBX96, amount1);
        }
    }

    /// @notice Computes the amount of token0 for a given amount of liquidity and a price range
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param liquidity The liquidity being valued
    /// @return amount0 The amount of token0
    function getAmount0ForLiquidity(
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint128 liquidity
    ) internal pure returns (uint256 amount0) {
        if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);

        return
            FullMath.mulDiv(
                uint256(liquidity) << 96,
                sqrtRatioBX96 - sqrtRatioAX96,
                sqrtRatioBX96
            ) / sqrtRatioAX96;
    }

    /// @notice Computes the amount of token1 for a given amount of liquidity and a price range
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param liquidity The liquidity being valued
    /// @return amount1 The amount of token1
    function getAmount1ForLiquidity(
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint128 liquidity
    ) internal pure returns (uint256 amount1) {
        if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);

        return FullMath.mulDiv(liquidity, sqrtRatioBX96 - sqrtRatioAX96, Q96);
    }

    /// @notice Computes the token0 and token1 value for a given amount of liquidity, the current
    /// pool prices and the prices at the tick boundaries
    /// @param sqrtRatioX96 A sqrt price representing the current pool prices
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param liquidity The liquidity being valued
    /// @return amount0 The amount of token0
    /// @return amount1 The amount of token1
    function getAmountsForLiquidity(
        uint160 sqrtRatioX96,
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint128 liquidity
    ) internal pure returns (uint256 amount0, uint256 amount1) {
        if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);

        if (sqrtRatioX96 <= sqrtRatioAX96) {
            amount0 = getAmount0ForLiquidity(sqrtRatioAX96, sqrtRatioBX96, liquidity);
        } else if (sqrtRatioX96 < sqrtRatioBX96) {
            amount0 = getAmount0ForLiquidity(sqrtRatioX96, sqrtRatioBX96, liquidity);
            amount1 = getAmount1ForLiquidity(sqrtRatioAX96, sqrtRatioX96, liquidity);
        } else {
            amount1 = getAmount1ForLiquidity(sqrtRatioAX96, sqrtRatioBX96, liquidity);
        }
    }
}

// File: contracts\impermax-v3-core\extensions\interfaces\IUniswapV3Pool.sol

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

interface IUniswapV3Pool {
    function factory() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function fee() external view returns (uint24);
    function tickSpacing() external view returns (int24);
    function maxLiquidityPerTick() external view returns (uint128);
	
    function slot0()
        external
        view
        returns (
            uint160 sqrtPriceX96,
            int24 tick,
            uint16 observationIndex,
            uint16 observationCardinality,
            uint16 observationCardinalityNext,
            uint8 feeProtocol,
            bool unlocked
        );

    function feeGrowthGlobal0X128() external view returns (uint256);
    function feeGrowthGlobal1X128() external view returns (uint256);
    function protocolFees() external view returns (uint128, uint128);
    function liquidity() external view returns (uint128);

    function ticks(int24 tick)
        external
        view
        returns (
            uint128 liquidityGross,
            int128 liquidityNet,
            uint256 feeGrowthOutside0X128,
            uint256 feeGrowthOutside1X128,
            int56 tickCumulativeOutside,
            uint160 secondsPerLiquidityOutsideX128,
            uint32 secondsOutside,
            bool initialized
        );

    function tickBitmap(int16 wordPosition) external view returns (uint256);

    function positions(bytes32 key)
        external
        view
        returns (
            uint128 _liquidity,
            uint256 feeGrowthInside0LastX128,
            uint256 feeGrowthInside1LastX128,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        );

    function observations(uint256 index)
        external
        view
        returns (
            uint32 blockTimestamp,
            int56 tickCumulative,
            uint160 secondsPerLiquidityCumulativeX128,
            bool initialized
        );
		
    function observe(uint32[] calldata secondsAgos)
        external
        view
        returns (int56[] memory tickCumulatives, uint160[] memory secondsPerLiquidityCumulativeX128s);

    function snapshotCumulativesInside(int24 tickLower, int24 tickUpper)
        external
        view
        returns (
            int56 tickCumulativeInside,
            uint160 secondsPerLiquidityInsideX128,
            uint32 secondsInside
        );
		
    function initialize(uint160 sqrtPriceX96) external;

    function mint(
        address recipient,
        int24 tickLower,
        int24 tickUpper,
        uint128 amount,
        bytes calldata data
    ) external returns (uint256 amount0, uint256 amount1);

    function collect(
        address recipient,
        int24 tickLower,
        int24 tickUpper,
        uint128 amount0Requested,
        uint128 amount1Requested
    ) external returns (uint128 amount0, uint128 amount1);

    function burn(
        int24 tickLower,
        int24 tickUpper,
        uint128 amount
    ) external returns (uint256 amount0, uint256 amount1);

    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes calldata data
    ) external returns (int256 amount0, int256 amount1);
	
    function flash(
        address recipient,
        uint256 amount0,
        uint256 amount1,
        bytes calldata data
    ) external;

    function increaseObservationCardinalityNext(uint16 observationCardinalityNext) external;
}

// File: contracts\libraries\UniswapV3Math.sol

pragma solidity =0.5.16;
library UniswapV3Math {
	
	function optimalLiquidity(
		address uniswapV3Pool,
		int24 tickLower,
		int24 tickUpper,
		uint amount0Desired,
		uint amount1Desired,
		uint amount0Min,
		uint amount1Min
	) external view returns (uint128 liquidity, uint amount0, uint amount1) {		
		(uint160 sqrtPriceX96, , , , , , ) = IUniswapV3Pool(uniswapV3Pool).slot0();
		uint160 sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(tickLower);
		uint160 sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(tickUpper);

		liquidity = LiquidityAmounts.getLiquidityForAmounts(
			sqrtPriceX96,
			sqrtRatioAX96,
			sqrtRatioBX96,
			amount0Desired,
			amount1Desired
		);
		// get amountsOut
		(amount0, amount1) = LiquidityAmounts.getAmountsForLiquidity(
			sqrtPriceX96,
			sqrtRatioAX96,
			sqrtRatioBX96,
			liquidity
		);
		// round up to get amountsIn
		if (amount0 < amount0Desired) amount0++; 
		if (amount1 < amount1Desired) amount1++; 
		
		require(amount0 >= amount0Min, "ImpermaxRouter: INSUFFICIENT_0_AMOUNT");
		require(amount1 >= amount1Min, "ImpermaxRouter: INSUFFICIENT_1_AMOUNT");
	}
	
}

// File: contracts\impermax-v3-core\interfaces\ICollateral.sol

pragma solidity >=0.5.0;

interface ICollateral {
	
	/* ImpermaxERC721 */

	event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
	event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
	event ApprovalForAll(address indexed owner, address indexed operator, bool approved);
	
	function name() external view returns (string memory);
	function symbol() external view returns (string memory);
	function balanceOf(address owner) external view returns (uint256 balance);
	function ownerOf(uint256 tokenId) external view returns (address owner);
	function getApproved(uint256 tokenId) external view returns (address operator);
	function isApprovedForAll(address owner, address operator) external view returns (bool);
	
	function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;
	function safeTransferFrom(address from, address to, uint256 tokenId) external;
	function transferFrom(address from, address to, uint256 tokenId) external;
	function approve(address to, uint256 tokenId) external;
	function setApprovalForAll(address operator, bool approved) external;
	function permit(address spender, uint tokenId, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
	
	/* Collateral */
	
	event Mint(address indexed to, uint tokenId);
	event Redeem(address indexed to, uint tokenId, uint percentage, uint redeemTokenId);
	event Seize(address indexed to, uint tokenId, uint percentage, uint redeemTokenId);
	event RestructureBadDebt(uint tokenId, uint postLiquidationCollateralRatio);
	
	function underlying() external view returns (address);
	function factory() external view returns (address);
	function borrowable0() external view returns (address);
	function borrowable1() external view returns (address);
	function safetyMarginSqrt() external view returns (uint);
	function liquidationIncentive() external view returns (uint);
	function liquidationFee() external view returns (uint);
	function liquidationPenalty() external view returns (uint);

	function mint(address to, uint256 tokenId) external;
	function redeem(address to, uint256 tokenId, uint256 percentage, bytes calldata data) external returns (uint redeemTokenId);
	function redeem(address to, uint256 tokenId, uint256 percentage) external returns (uint redeemTokenId);
	function isLiquidatable(uint tokenId) external returns (bool);
	function isUnderwater(uint tokenId) external returns (bool);
	function canBorrow(uint tokenId, address borrowable, uint accountBorrows) external returns (bool);
	function restructureBadDebt(uint tokenId) external;
	function seize(uint tokenId, uint repayAmount, address liquidator, bytes calldata data) external returns (uint seizeTokenId);
	
	/* CSetter */
	
	event NewSafetyMargin(uint newSafetyMarginSqrt);
	event NewLiquidationIncentive(uint newLiquidationIncentive);
	event NewLiquidationFee(uint newLiquidationFee);

	function SAFETY_MARGIN_SQRT_MIN() external pure returns (uint);
	function SAFETY_MARGIN_SQRT_MAX() external pure returns (uint);
	function LIQUIDATION_INCENTIVE_MIN() external pure returns (uint);
	function LIQUIDATION_INCENTIVE_MAX() external pure returns (uint);
	function LIQUIDATION_FEE_MAX() external pure returns (uint);
	
	function _setFactory() external;
	function _initialize (
		string calldata _name,
		string calldata _symbol,
		address _underlying, 
		address _borrowable0, 
		address _borrowable1
	) external;
	function _setSafetyMarginSqrt(uint newSafetyMarginSqrt) external;
	function _setLiquidationIncentive(uint newLiquidationIncentive) external;
	function _setLiquidationFee(uint newLiquidationFee) external;
}

// File: contracts\impermax-v3-core\interfaces\INFTLP.sol

pragma solidity >=0.5.0;

interface INFTLP {
	struct RealXY {
		uint256 realX;
		uint256 realY;
	}
	
	struct RealXYs {
		RealXY lowestPrice;
		RealXY currentPrice;
		RealXY highestPrice;
	}
	
	// ERC-721
	function ownerOf(uint256 _tokenId) external view returns (address);
	function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;
	function safeTransferFrom(address from, address to, uint256 tokenId) external;
	function transferFrom(address from, address to, uint256 tokenId) external;
	
	// Global state
	function token0() external view returns (address);
	function token1() external view returns (address);
	
	// Position state
	function getPositionData(uint256 _tokenId, uint256 _safetyMarginSqrt) external returns (
		uint256 priceSqrtX96,
		RealXYs memory realXYs
	);
	
	// Interactions
	
	function split(uint256 tokenId, uint256 percentage) external returns (uint256 newTokenId);
	function join(uint256 tokenId, uint256 tokenToJoin) external;
}

// File: contracts\impermax-v3-core\extensions\interfaces\ITokenizedUniswapV3Position.sol

pragma solidity >=0.5.0;

interface ITokenizedUniswapV3Position {
	
	// ERC-721
	
	function name() external view returns (string memory);
	function symbol() external view returns (string memory);
	function balanceOf(address owner) external view returns (uint256 balance);
	function ownerOf(uint256 tokenId) external view returns (address owner);
	function getApproved(uint256 tokenId) external view returns (address operator);
	function isApprovedForAll(address owner, address operator) external view returns (bool);
	
	function DOMAIN_SEPARATOR() external view returns (bytes32);
	function nonces(uint256 tokenId) external view returns (uint256);
	
	function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;
	function safeTransferFrom(address from, address to, uint256 tokenId) external;
	function transferFrom(address from, address to, uint256 tokenId) external;
	function approve(address to, uint256 tokenId) external;
	function setApprovalForAll(address operator, bool approved) external;
	function permit(address spender, uint tokenId, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
	
	// INFTLP
	
	function token0() external view returns (address);
	function token1() external view returns (address);
	function getPositionData(uint256 _tokenId, uint256 _safetyMarginSqrt) external returns (
		uint256 priceSqrtX96,
		INFTLP.RealXYs memory realXYs
	);
	
	function join(uint256 tokenId, uint256 tokenToJoin) external;
	function split(uint256 tokenId, uint256 percentage) external returns (uint256 newTokenId);
	
	// ITokenizedUniswapV3Position
	
	struct Position {
		uint24 fee;
		int24 tickLower;
		int24 tickUpper;
		uint128 liquidity;
		uint256 feeGrowthInside0LastX128;
		uint256 feeGrowthInside1LastX128;
	}
	
	function factory() external view returns (address);
	function uniswapV3Factory() external view returns (address);
	function oracle() external view returns (address);
	
	function totalBalance(uint24 fee, int24 tickLower, int24 tickUpper) external view returns (uint256);
	
	function positions(uint256 tokenId) external view returns (
		uint24 fee,
		int24 tickLower,
		int24 tickUpper,
		uint128 liquidity,
		uint256 feeGrowthInside0LastX128,
		uint256 feeGrowthInside1LastX128
	);
	function positionsLength() external view returns (uint256);
	
	function getPool(uint24 fee) external view returns (address pool);
	
	function oraclePriceSqrtX96() external returns (uint256);
	
	event MintPosition(uint256 indexed tokenId, uint24 fee, int24 tickLower, int24 tickUpper);
	event UpdatePositionLiquidity(uint256 indexed tokenId, uint256 liquidity);
	event UpdatePositionFeeGrowthInside(uint256 indexed tokenId, uint256 feeGrowthInside0LastX128, uint256 feeGrowthInside1LastX128);

	function _initialize (
		address _uniswapV3Factory, 
		address _oracle, 
		address _token0, 
		address _token1
	) external;
	
	function mint(address to, uint24 fee, int24 tickLower, int24 tickUpper) external  returns (uint256 newTokenId);
	function redeem(address to, uint256 tokenId) external  returns (uint256 amount0, uint256 amount1);
}

// File: contracts\impermax-v3-core\extensions\interfaces\IUniswapV3Factory.sol

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title The interface for the Uniswap V3 Factory
/// @notice The Uniswap V3 Factory facilitates creation of Uniswap V3 pools and control over the protocol fees
interface IUniswapV3Factory {
    /// @notice Emitted when the owner of the factory is changed
    /// @param oldOwner The owner before the owner was changed
    /// @param newOwner The owner after the owner was changed
    event OwnerChanged(address indexed oldOwner, address indexed newOwner);

    /// @notice Emitted when a pool is created
    /// @param token0 The first token of the pool by address sort order
    /// @param token1 The second token of the pool by address sort order
    /// @param fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
    /// @param tickSpacing The minimum number of ticks between initialized ticks
    /// @param pool The address of the created pool
    event PoolCreated(
        address indexed token0,
        address indexed token1,
        uint24 indexed fee,
        int24 tickSpacing,
        address pool
    );

    /// @notice Emitted when a new fee amount is enabled for pool creation via the factory
    /// @param fee The enabled fee, denominated in hundredths of a bip
    /// @param tickSpacing The minimum number of ticks between initialized ticks for pools created with the given fee
    event FeeAmountEnabled(uint24 indexed fee, int24 indexed tickSpacing);

    /// @notice Returns the current owner of the factory
    /// @dev Can be changed by the current owner via setOwner
    /// @return The address of the factory owner
    function owner() external view returns (address);

    /// @notice Returns the tick spacing for a given fee amount, if enabled, or 0 if not enabled
    /// @dev A fee amount can never be removed, so this value should be hard coded or cached in the calling context
    /// @param fee The enabled fee, denominated in hundredths of a bip. Returns 0 in case of unenabled fee
    /// @return The tick spacing
    function feeAmountTickSpacing(uint24 fee) external view returns (int24);

    /// @notice Returns the pool address for a given pair of tokens and a fee, or address 0 if it does not exist
    /// @dev tokenA and tokenB may be passed in either token0/token1 or token1/token0 order
    /// @param tokenA The contract address of either token0 or token1
    /// @param tokenB The contract address of the other token
    /// @param fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
    /// @return pool The pool address
    function getPool(
        address tokenA,
        address tokenB,
        uint24 fee
    ) external view returns (address pool);

    /// @notice Creates a pool for the given two tokens and fee
    /// @param tokenA One of the two tokens in the desired pool
    /// @param tokenB The other of the two tokens in the desired pool
    /// @param fee The desired fee for the pool
    /// @dev tokenA and tokenB may be passed in either order: token0/token1 or token1/token0. tickSpacing is retrieved
    /// from the fee. The call will revert if the pool already exists, the fee is invalid, or the token arguments
    /// are invalid.
    /// @return pool The address of the newly created pool
    function createPool(
        address tokenA,
        address tokenB,
        uint24 fee
    ) external returns (address pool);

    /// @notice Updates the owner of the factory
    /// @dev Must be called by the current owner
    /// @param _owner The new owner of the factory
    function setOwner(address _owner) external;

    /// @notice Enables a fee amount with the given tickSpacing
    /// @dev Fee amounts may never be removed once enabled
    /// @param fee The fee amount to enable, denominated in hundredths of a bip (i.e. 1e-6)
    /// @param tickSpacing The spacing between ticks to be enforced for all pools created with the given fee amount
    function enableFeeAmount(uint24 fee, int24 tickSpacing) external;
}

// File: contracts\ImpermaxV3UniV3Router01.sol

pragma solidity =0.5.16;






contract ImpermaxV3UniV3Router01 is ImpermaxV3BaseRouter01 {
	address public uniswapV3Factory;
	
	constructor(address _factory, address _uniswapV3Factory, address _WETH) public ImpermaxV3BaseRouter01(_factory, _WETH) {
		uniswapV3Factory = _uniswapV3Factory;
	}
	
	/*** Data Structures ***/
	
	// callbacks
	struct UniV3MintCallbackData {
		address msgSender;
		address token0;
		address token1;
		uint24 fee;
		uint amount0Router;
		uint amount1Router;
	}
	
	/*** Primitive Actions ***/
	
	function _mintUniV3Empty(
		LendingPool memory pool,
		uint24 fee,
		int24 tickLower,
		int24 tickUpper
	) internal returns (uint tokenId) {
		tokenId = ITokenizedUniswapV3Position(pool.nftlp).mint(pool.collateral, fee, tickLower, tickUpper);
		ICollateral(pool.collateral).mint(address(this), tokenId);
	}
	function _mintUniV3Internal(
		LendingPool memory pool,
		uint tokenId,
		address msgSender,
		uint128 liquidity,
		uint amount0User,
		uint amount1User,
		uint amount0Router,
		uint amount1Router
	) internal {
		(uint24 fee, int24 tickLower, int24 tickUpper,,,) = ITokenizedUniswapV3Position(pool.nftlp).positions(tokenId);
		address uniswapV3Pool = ITokenizedUniswapV3Position(pool.nftlp).getPool(fee);
		
		// adjust amount for ETH
		// if the user has deposited native ETH, we need to subtract that amount from amountUser and add it to amountRouter
		int isEth = pool.tokens[0] == WETH ? 0 : pool.tokens[1] == WETH ? int(1) : -1;
		if (isEth != -1) {
			uint routerBalance = IERC20(WETH).balanceOf(address(this));
			if (isEth == 0 && routerBalance > amount0Router) {
				uint totalEthAmount = amount0User.add(amount0Router);
				amount0Router = Math.min(totalEthAmount, routerBalance);
				amount0User = totalEthAmount.sub(amount0Router);
			}
			if (isEth == 1 && routerBalance > amount1Router) {
				uint totalEthAmount = amount1User.add(amount1Router);
				amount1Router = Math.min(totalEthAmount, routerBalance);
				amount1User = totalEthAmount.sub(amount1Router);
			}
		}

		bytes memory encoded = abi.encode(UniV3MintCallbackData({
			msgSender: msgSender,
			token0: pool.tokens[0],
			token1: pool.tokens[1],
			fee: fee,
			amount0Router: amount0Router,
			amount1Router: amount1Router
		}));
		IUniswapV3Pool(uniswapV3Pool).mint(pool.nftlp, tickLower, tickUpper, liquidity, encoded);
		
		uint tokenToJoin = ITokenizedUniswapV3Position(pool.nftlp).mint(address(this), fee, tickLower, tickUpper);
		ITokenizedUniswapV3Position(pool.nftlp).join(tokenId, tokenToJoin);
	}
	function _mintUniV3(
		LendingPool memory pool,
		uint tokenId,
		address msgSender,
		uint amount0Desired,	// intended as user amount
		uint amount1Desired,	// intended as user amount
		uint amount0Min,
		uint amount1Min
	) internal {
		(uint24 fee, int24 tickLower, int24 tickUpper,,,) = ITokenizedUniswapV3Position(pool.nftlp).positions(tokenId);
		address uniswapV3Pool = ITokenizedUniswapV3Position(pool.nftlp).getPool(fee);
		(uint128 liquidity, uint amount0, uint amount1) = UniswapV3Math.optimalLiquidity(uniswapV3Pool, tickLower, tickUpper, amount0Desired, amount1Desired, amount0Min, amount1Min);
		_mintUniV3Internal(pool, tokenId, msgSender, liquidity, amount0, amount1, 0, 0);
	}
	
	function _redeemUniV3Step1(
		LendingPool memory pool,
		uint tokenId,
		address msgSender,
		uint percentage,
		uint amount0Min,
		uint amount1Min,
		address to,
		Actions.Action memory nextAction
	) internal {
		require(percentage > 0, "ImpermaxRouter: REDEEM_ZERO");
		bytes memory decoded = abi.encode(RedeemCallbackData({
			pool: pool,
			msgSender: msgSender,
			redeemTo: to,
			amount0Min: amount0Min,
			amount1Min: amount1Min,
			nextAction: nextAction
		}));
		ICollateral(pool.collateral).redeem(address(this), tokenId, percentage, decoded);
	}
	function _redeemStep2(
		LendingPool memory pool,
		uint redeemTokenId,
		uint amount0Min,
		uint amount1Min,
		address to
	) internal {
		(uint amount0, uint amount1) = ITokenizedUniswapV3Position(pool.nftlp).redeem(to, redeemTokenId);
		require(amount0 >= amount0Min, "ImpermaxRouter: INSUFFICIENT_0_AMOUNT");
		require(amount1 >= amount1Min, "ImpermaxRouter: INSUFFICIENT_1_AMOUNT");
	}
	
	/*** Composite Actions ***/
	
	function _borrowAndMintUniV3(
		LendingPool memory pool,
		uint tokenId,
		uint amount0User,
		uint amount1User,
		uint amount0,			// intended as user amount + router amount
		uint amount1,			// intended as user amount + router amount
		uint amount0Min,		// intended as user amount + router amount
		uint amount1Min			// intended as user amount + router amount
	) internal returns (Actions.Action[] memory a) {
		uint128 liquidity;
		{
		(uint24 fee, int24 tickLower, int24 tickUpper,,,) = ITokenizedUniswapV3Position(pool.nftlp).positions(tokenId);
		address uniswapV3Pool = ITokenizedUniswapV3Position(pool.nftlp).getPool(fee);
		(liquidity, amount0, amount1) = UniswapV3Math.optimalLiquidity(uniswapV3Pool, tickLower, tickUpper, amount0, amount1, amount0Min, amount1Min);
		}
		(uint amount0Router, uint amount1Router) = (
			amount0 > amount0User ? amount0 - amount0User : 0,
			amount1 > amount1User ? amount1 - amount1User : 0
		);

		require(amount0Router > 0 || amount1Router > 0, "ImpermaxRouter: NO_ACTUAL_BORROWING");
		if (amount0Router > 0 && amount1Router > 0) {
			a = new Actions.Action[](3);		
			a[0] = Actions.getBorrowAction(0, amount0Router, address(this));
			a[1] = Actions.getBorrowAction(1, amount1Router, address(this));
		} else {
			a = new Actions.Action[](2);
			if (amount0Router > 0)	a[0] = Actions.getBorrowAction(0, amount0Router, address(this));
			if (amount1Router > 0)	a[0] = Actions.getBorrowAction(1, amount1Router, address(this));
		}
		a[a.length-1] = Actions.getMintUniV3InternalAction(liquidity, amount0 - amount0Router, amount1 - amount1Router, amount0Router, amount1Router);
	}

	/*** EXECUTE ***/
	
	function _execute(
		LendingPool memory pool,
		uint tokenId,
		address msgSender,
		Actions.Action memory action
	) internal returns (uint) {
		if (action.actionType == Actions.Type.NO_ACTION) return tokenId;
		Actions.Action memory nextAction = abi.decode(action.nextAction, (Actions.Action));
		if (action.actionType == Actions.Type.MINT_UNIV3_EMPTY) {
			Actions.MintUniV3EmptyData memory decoded = abi.decode(action.actionData, (Actions.MintUniV3EmptyData));
			tokenId = _mintUniV3Empty(
				pool,
				decoded.fee,
				decoded.tickLower,
				decoded.tickUpper
			);
		}
		else if (action.actionType == Actions.Type.MINT_UNIV3_INTERNAL) {
			Actions.MintUniV3InternalData memory decoded = abi.decode(action.actionData, (Actions.MintUniV3InternalData));
			_mintUniV3Internal(
				pool,
				tokenId,
				msgSender,
				decoded.liquidity,
				decoded.amount0User,
				decoded.amount1User,
				decoded.amount0Router,
				decoded.amount1Router
			);
		}
		else if (action.actionType == Actions.Type.MINT_UNIV3) {
			Actions.MintUniV3Data memory decoded = abi.decode(action.actionData, (Actions.MintUniV3Data));
			_mintUniV3(
				pool,
				tokenId,
				msgSender,
				decoded.amount0Desired,
				decoded.amount1Desired,
				decoded.amount0Min,
				decoded.amount1Min
			);
		}
		else if (action.actionType == Actions.Type.REDEEM_UNIV3) {
			Actions.RedeemUniV3Data memory decoded = abi.decode(action.actionData, (Actions.RedeemUniV3Data));
			_redeemUniV3Step1(
				pool,
				tokenId,
				msgSender,
				decoded.percentage,
				decoded.amount0Min,
				decoded.amount1Min,
				decoded.to,
				nextAction
			);
			return tokenId;
		}
		else if (action.actionType == Actions.Type.BORROW_AND_MINT_UNIV3) {
			Actions.BorrowAndMintUniV3Data memory decoded = abi.decode(action.actionData, (Actions.BorrowAndMintUniV3Data));
			Actions.Action[] memory actions = _borrowAndMintUniV3(
				pool,
				tokenId,
				decoded.amount0User,
				decoded.amount1User,
				decoded.amount0Desired,
				decoded.amount1Desired,
				decoded.amount0Min,
				decoded.amount1Min
			);
			nextAction = Actions.actionsSorter(actions, nextAction);
		}
		else return super._execute(pool, tokenId, msgSender, action);
		
		return _execute(
			pool,
			tokenId,
			msgSender,
			nextAction
		);
	}
	
	function _checkFirstAction(Actions.Type actionType) internal {
		require(actionType == Actions.Type.MINT_UNIV3_EMPTY, "ImpermaxRouter: INVALID_FIRST_ACTION");
	}
	
	/*** Callbacks ***/
	
	function uniswapV3MintCallback(uint256 amount0Owed, uint256 amount1Owed, bytes calldata data) external {	
		UniV3MintCallbackData memory decoded = abi.decode(data, (UniV3MintCallbackData));
		
		// only succeeds if called by a uniswapV3Pool
		address uniswapV3Pool = IUniswapV3Factory(uniswapV3Factory).getPool(decoded.token0, decoded.token1, decoded.fee);
		require(msg.sender == uniswapV3Pool, "ImpermaxRouter: UNAUTHORIZED_CALLER");
		
		uint amount0Router = Math.min(amount0Owed, decoded.amount0Router);
		uint amount1Router = Math.min(amount1Owed, decoded.amount1Router);
		uint amount0User = amount0Router < amount0Owed ? amount0Owed - amount0Router : 0;
		uint amount1User = amount1Router < amount1Owed ? amount1Owed - amount1Router : 0;
		
		if (amount0User > 0) ImpermaxPermit.safeTransferFrom(decoded.token0, decoded.msgSender, uniswapV3Pool, amount0User);
		if (amount1User > 0) ImpermaxPermit.safeTransferFrom(decoded.token1, decoded.msgSender, uniswapV3Pool, amount1User);
		if (amount0Router > 0) TransferHelper.safeTransfer(decoded.token0, uniswapV3Pool, amount0Router);
		if (amount1Router > 0) TransferHelper.safeTransfer(decoded.token1, uniswapV3Pool, amount1Router);
	}
	
}