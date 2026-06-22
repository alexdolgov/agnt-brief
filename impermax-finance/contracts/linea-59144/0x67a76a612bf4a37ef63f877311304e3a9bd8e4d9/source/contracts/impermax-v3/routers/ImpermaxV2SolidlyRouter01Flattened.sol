// File: contracts\interfaces\IERC20.sol

pragma solidity >=0.5.0;
pragma experimental ABIEncoderV2;

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

// File: contracts\interfaces\IV2BaseRouter01.sol

pragma solidity >=0.5.0;

interface IV2BaseRouter01 {
	struct LendingPool {
		address lp;
		address collateral;
		address[2] borrowables;
		address[2] tokens;
	}
	function getLendingPool(address lp) external view returns (LendingPool memory pool);
	function factory() external view returns (address);
	
	function execute(
		address lp,
		bytes calldata actionsData,
		bytes calldata permitsData
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
	event CalculateKink(uint kinkRate);
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

// File: contracts\impermax-v2-core\interfaces\IBorrowableV2.sol

pragma solidity >=0.5.0;

interface IBorrowableV2 {

	/*** Impermax ERC20 ***/
	
	event Transfer(address indexed from, address indexed to, uint value);
	event Approval(address indexed owner, address indexed spender, uint value);
	
	function name() external pure returns (string memory);
	function symbol() external pure returns (string memory);
	function decimals() external pure returns (uint8);
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
	event Borrow(address indexed sender, address indexed borrower, address indexed receiver, uint borrowAmount, uint repayAmount, uint accountBorrowsPrior, uint accountBorrows, uint totalBorrows);
	event Liquidate(address indexed sender, address indexed borrower, address indexed liquidator, uint seizeTokens, uint repayAmount, uint accountBorrowsPrior, uint accountBorrows, uint totalBorrows);
	
	function BORROW_FEE() external pure returns (uint);
	function collateral() external view returns (address);
	function reserveFactor() external view returns (uint);
	function exchangeRateLast() external view returns (uint);
	function borrowIndex() external view returns (uint);
	function totalBorrows() external view returns (uint);
	function borrowAllowance(address owner, address spender) external view returns (uint);
	function borrowBalance(address borrower) external view returns (uint);	
	function borrowTracker() external view returns (address);
	
	function BORROW_PERMIT_TYPEHASH() external pure returns (bytes32);
	function borrowApprove(address spender, uint256 value) external returns (bool);
	function borrowPermit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
	function borrow(address borrower, address receiver, uint borrowAmount, bytes calldata data) external;
	function liquidate(address borrower, address liquidator) external returns (uint seizeTokens);
	function trackBorrow(address borrower) external;
	
	/*** Borrowable Interest Rate Model ***/

	event AccrueInterest(uint interestAccumulated, uint borrowIndex, uint totalBorrows);
	event CalculateKink(uint kinkRate);
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
	event NewBorrowTracker(address newBorrowTracker);

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
	function _setBorrowTracker(address newBorrowTracker) external;
}

// File: contracts\impermax-v2-core\interfaces\IFactoryV2.sol

pragma solidity >=0.5.0;

interface IFactoryV2 {
	event LendingPoolInitialized(address indexed uniswapV2Pair, address indexed token0, address indexed token1,
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

	function getLendingPool(address uniswapV2Pair) external view returns (
		bool initialized, 
		uint24 lendingPoolId, 
		address collateral, 
		address borrowable0, 
		address borrowable1
	);
	function allLendingPools(uint) external view returns (address uniswapV2Pair);
	function allLendingPoolsLength() external view returns (uint);
	
	function bDeployer() external view returns (address);
	function cDeployer() external view returns (address);
	function simpleUniswapOracle() external view returns (address);

	function createCollateral(address uniswapV2Pair) external returns (address collateral);
	function createBorrowable0(address uniswapV2Pair) external returns (address borrowable0);
	function createBorrowable1(address uniswapV2Pair) external returns (address borrowable1);
	function initializeLendingPool(address uniswapV2Pair) external;

	function _setPendingAdmin(address newPendingAdmin) external;
	function _acceptAdmin() external;
	function _setReservesPendingAdmin(address newPendingAdmin) external;
	function _acceptReservesAdmin() external;
	function _setReservesManager(address newReservesManager) external;
}

// File: contracts\impermax-v2-core\interfaces\IImpermaxCalleeV2.sol

pragma solidity >=0.5.0;

interface IImpermaxCalleeV2 {
    function impermaxBorrow(address sender, address borrower, uint borrowAmount, bytes calldata data) external;
    function impermaxRedeem(address sender, uint redeemAmount, bytes calldata data) external;
}

// File: contracts\ImpermaxV2BaseRouter01.sol

pragma solidity =0.5.16;












contract ImpermaxV2BaseRouter01 is IV2BaseRouter01, IImpermaxCalleeV2 {
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
		uint redeemTokens;
		uint amount0Min;
		uint amount1Min;
		Actions.Action nextAction;
	}
	
	/*** Primitive Actions ***/

	function _borrow(
		LendingPool memory pool,
		uint8 index,
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
		IBorrowableV2(pool.borrowables[index]).borrow(msgSender, to, amount, encoded);	
	}

	function _repayAmount(
		address borrowable,
		address msgSender,
		uint amountMax
	) internal returns (uint amount) { 
		IBorrowableV2(borrowable).accrueInterest();
		uint borrowedAmount = IBorrowableV2(borrowable).borrowBalance(msgSender);
		amount = Math.min(amountMax, borrowedAmount);
	}
	function _repayUser(
		LendingPool memory pool,
		uint8 index,
		address msgSender,
		uint amountMax
	) internal {
		address borrowable = pool.borrowables[index];
		uint repayAmount = _repayAmount(borrowable, msgSender, amountMax);
		if (repayAmount == 0) return;
		ImpermaxPermit.safeTransferFrom(pool.tokens[index], msgSender, borrowable, repayAmount);
		IBorrowableV2(borrowable).borrow(msgSender, address(0), 0, new bytes(0));
	}
	function _repayRouter(
		LendingPool memory pool,
		uint8 index,
		address msgSender,
		uint amountMax,
		address refundTo
	) internal {
		address borrowable = pool.borrowables[index];
		uint routerBalance = IERC20(pool.tokens[index]).balanceOf(address(this));
		amountMax = Math.min(amountMax, routerBalance);
		uint repayAmount = _repayAmount(borrowable, msgSender, amountMax);
		if (routerBalance > repayAmount && refundTo != address(this)) TransferHelper.safeTransfer(pool.tokens[index], refundTo, routerBalance - repayAmount);
		if (repayAmount == 0) return;
		TransferHelper.safeTransfer(pool.tokens[index], borrowable, repayAmount);
		IBorrowableV2(borrowable).borrow(msgSender, address(0), 0, new bytes(0));
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
		address msgSender,
		Actions.Action memory action
	) internal {
		if (action.actionType == Actions.Type.NO_ACTION) return;
		Actions.Action memory nextAction = abi.decode(action.nextAction, (Actions.Action));
		if (action.actionType == Actions.Type.BORROW) {
			Actions.BorrowData memory decoded = abi.decode(action.actionData, (Actions.BorrowData));
			_borrow(
				pool,
				decoded.index,
				msgSender,
				decoded.amount,
				decoded.to,
				nextAction
			);
			if (decoded.to == address(this)) return;
		}
		else if (action.actionType == Actions.Type.REPAY_USER) {
			Actions.RepayUserData memory decoded = abi.decode(action.actionData, (Actions.RepayUserData));
			_repayUser(
				pool,
				decoded.index,
				msgSender,
				decoded.amountMax
			);
		}
		else if (action.actionType == Actions.Type.REPAY_ROUTER) {
			Actions.RepayRouterData memory decoded = abi.decode(action.actionData, (Actions.RepayRouterData));
			_repayRouter(
				pool,
				decoded.index,
				msgSender,
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
			msgSender,
			nextAction
		);
	}
	
	/*** External ***/
		
	function execute(
		address lp,
		bytes calldata actionsData,
		bytes calldata permitsData
	) external payable permit(permitsData) {
		if (msg.value > 0) {
			IWETH(WETH).deposit.value(msg.value)();
		}
		
		Actions.Action[] memory actions = abi.decode(actionsData, (Actions.Action[]));
		LendingPool memory pool = getLendingPool(lp);
			
		_execute(
			pool,
			msg.sender,
			Actions.actionsSorter(actions)
		);
	}
	
	/*** Callbacks ***/
	
	function impermaxBorrow(address sender, address borrower, uint borrowAmount, bytes calldata data) external {
		borrower; borrowAmount;
		BorrowCallbackData memory decoded = abi.decode(data, (BorrowCallbackData));
		
		// only succeeds if called by a borrowable and if that borrowable has been called by the router
		address declaredCaller = getBorrowable(decoded.pool.lp, decoded.borrowableIndex);
		require(sender == address(this), "ImpermaxRouter: SENDER_NOT_ROUTER");
		require(msg.sender == declaredCaller, "ImpermaxRouter: UNAUTHORIZED_CALLER");
		
		_execute(
			decoded.pool,
			decoded.msgSender,
			decoded.nextAction
		);
	}
	
	function _redeemStep2(LendingPool memory pool, uint amount0Min, uint amount1Min, address to) internal;
	function impermaxRedeem(address sender, uint redeemAmount, bytes calldata data) external {
		RedeemCallbackData memory decoded = abi.decode(data, (RedeemCallbackData));
		
		// only succeeds if called by a collateral and if that collateral has been called by the router
		address declaredCaller = getCollateral(decoded.pool.lp);
		require(sender == address(this), "ImpermaxRouter: SENDER_NOT_ROUTER");
		require(msg.sender == declaredCaller, "ImpermaxRouter: UNAUTHORIZED_CALLER");
		
		_redeemStep2(
			decoded.pool,
			decoded.amount0Min,
			decoded.amount1Min,
			decoded.redeemTo
		);
		
		_execute(
			decoded.pool,
			decoded.msgSender,
			decoded.nextAction
		);
		
		// repay flash redeem
		ImpermaxPermit.safeTransferFrom(declaredCaller, decoded.msgSender, declaredCaller, decoded.redeemTokens);
	}
	
	/*** Utilities ***/
	
	function getBorrowable(address lp, uint8 index) public view returns (address borrowable) {
		require(index < 2, "ImpermaxRouter: INDEX_TOO_HIGH");
		(,,,address borrowable0, address borrowable1) = IFactoryV2(factory).getLendingPool(lp);
		return index == 0 ? borrowable0 : borrowable1;
	}
	function getCollateral(address lp) public view returns (address collateral) {
		(,,collateral,,) = IFactoryV2(factory).getLendingPool(lp);
	}
	
	function getLendingPool(address lp) public view returns (LendingPool memory pool) {
		pool.lp = lp;
		(,,pool.collateral,pool.borrowables[0],pool.borrowables[1]) = 
			IFactoryV2(factory).getLendingPool(lp);
		pool.tokens[0] = IBorrowableV2(pool.borrowables[0]).underlying();
		pool.tokens[1] = IBorrowableV2(pool.borrowables[1]).underlying();
	}
}

// File: contracts\interfaces\ISolidlyPair.sol

pragma solidity >=0.5.0;

interface ISolidlyPair {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
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

    event Mint(address indexed sender, uint amount0, uint amount1);
    event Burn(address indexed sender, uint amount0, uint amount1, address indexed to);
    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint);
    function factory() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint reserve0, uint reserve1, uint blockTimestampLast);
    function price0CumulativeLast() external view returns (uint);
    function price1CumulativeLast() external view returns (uint);
    function kLast() external view returns (uint);

    function mint(address to) external returns (uint liquidity);
    function burn(address to) external returns (uint amount0, uint amount1);
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function skim(address to) external;
    function sync() external;

    function initialize(address, address) external;
}

// File: contracts\interfaces\IStakedLPToken.sol

pragma solidity >=0.5.0;

interface IStakedLPToken {

	/*** Impermax ERC20 ***/
	
	event Transfer(address indexed from, address indexed to, uint value);
	event Approval(address indexed owner, address indexed spender, uint value);
	
	function name() external pure returns (string memory);
	function symbol() external pure returns (string memory);
	function decimals() external pure returns (uint8);
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
	
	/*** StakedLPToken ***/
	
	event Reinvest(address indexed caller, uint256 reward, uint256 bounty);
	
	function isStakedLPToken() external pure returns (bool);
	function stakingRewards() external view returns (address);
	function rewardsToken() external view returns (address);
	function router() external view returns (address);
	function WETH() external view returns (address);
	function token0() external view returns (address);
	function token1() external view returns (address);
	function REINVEST_BOUNTY() external pure returns (uint256);
	
	function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
	function price0CumulativeLast() external view returns (uint256);
	function price1CumulativeLast() external view returns (uint256);

	function _initialize (
		address _stakingRewards,
		address _underlying,
		address _rewardsToken,
		address _token0,
		address _token1,
		address _router,
		address _WETH
	) external;

	function reinvest() external;
}

// File: contracts\interfaces\IUniswapV2Pair.sol

pragma solidity >=0.5.0;

interface IUniswapV2Pair {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
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

    event Mint(address indexed sender, uint amount0, uint amount1);
    event Burn(address indexed sender, uint amount0, uint amount1, address indexed to);
    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint);
    function factory() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function price0CumulativeLast() external view returns (uint);
    function price1CumulativeLast() external view returns (uint);
    function kLast() external view returns (uint);

    function mint(address to) external returns (uint liquidity);
    function burn(address to) external returns (uint amount0, uint amount1);
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function skim(address to) external;
    function sync() external;

    function initialize(address, address) external;
}

// File: contracts\libraries\UniswapV2Library.sol

pragma solidity >=0.5.0;

library UniswapV2Library {
    using SafeMath for uint;

    // returns sorted token addresses, used to handle return values from pairs sorted in this order
    function sortTokens(address tokenA, address tokenB) internal pure returns (address token0, address token1) {
        require(tokenA != tokenB, 'UniswapV2Library: IDENTICAL_ADDRESSES');
        (token0, token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), 'UniswapV2Library: ZERO_ADDRESS');
    }

    // calculates the CREATE2 address for a pair without making any external calls
    function pairFor(address factory, address tokenA, address tokenB) internal pure returns (address pair) {
        (address token0, address token1) = sortTokens(tokenA, tokenB);
        pair = address(uint(keccak256(abi.encodePacked(
                hex'ff',
                factory,
                keccak256(abi.encodePacked(token0, token1)),
                hex'96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f' // init code hash
            ))));
    }

    // fetches and sorts the reserves for a pair
    function getReserves(address factory, address tokenA, address tokenB) internal view returns (uint reserveA, uint reserveB) {
        (address token0,) = sortTokens(tokenA, tokenB);
        (uint reserve0, uint reserve1,) = IUniswapV2Pair(pairFor(factory, tokenA, tokenB)).getReserves();
        (reserveA, reserveB) = tokenA == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
    }

    // given some amount of an asset and pair reserves, returns an equivalent amount of the other asset
    function quote(uint amountA, uint reserveA, uint reserveB) internal pure returns (uint amountB) {
        require(amountA > 0, 'UniswapV2Library: INSUFFICIENT_AMOUNT');
        require(reserveA > 0 && reserveB > 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY');
        amountB = amountA.mul(reserveB) / reserveA;
    }

    // given an input amount of an asset and pair reserves, returns the maximum output amount of the other asset
    function getAmountOut(uint amountIn, uint reserveIn, uint reserveOut) internal pure returns (uint amountOut) {
        require(amountIn > 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT');
        require(reserveIn > 0 && reserveOut > 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY');
        uint amountInWithFee = amountIn.mul(997);
        uint numerator = amountInWithFee.mul(reserveOut);
        uint denominator = reserveIn.mul(1000).add(amountInWithFee);
        amountOut = numerator / denominator;
    }

    // given an output amount of an asset and pair reserves, returns a required input amount of the other asset
    function getAmountIn(uint amountOut, uint reserveIn, uint reserveOut) internal pure returns (uint amountIn) {
        require(amountOut > 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT');
        require(reserveIn > 0 && reserveOut > 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY');
        uint numerator = reserveIn.mul(amountOut).mul(1000);
        uint denominator = reserveOut.sub(amountOut).mul(997);
        amountIn = (numerator / denominator).add(1);
    }

    // performs chained getAmountOut calculations on any number of pairs
    function getAmountsOut(address factory, uint amountIn, address[] memory path) internal view returns (uint[] memory amounts) {
        require(path.length >= 2, 'UniswapV2Library: INVALID_PATH');
        amounts = new uint[](path.length);
        amounts[0] = amountIn;
        for (uint i; i < path.length - 1; i++) {
            (uint reserveIn, uint reserveOut) = getReserves(factory, path[i], path[i + 1]);
            amounts[i + 1] = getAmountOut(amounts[i], reserveIn, reserveOut);
        }
    }

    // performs chained getAmountIn calculations on any number of pairs
    function getAmountsIn(address factory, uint amountOut, address[] memory path) internal view returns (uint[] memory amounts) {
        require(path.length >= 2, 'UniswapV2Library: INVALID_PATH');
        amounts = new uint[](path.length);
        amounts[amounts.length - 1] = amountOut;
        for (uint i = path.length - 1; i > 0; i--) {
            (uint reserveIn, uint reserveOut) = getReserves(factory, path[i - 1], path[i]);
            amounts[i - 1] = getAmountIn(amounts[i], reserveIn, reserveOut);
        }
    }
}

// File: contracts\impermax-v2-core\interfaces\ICollateralV2.sol

pragma solidity >=0.5.0;

interface ICollateralV2 {

	/*** Impermax ERC20 ***/
	
	event Transfer(address indexed from, address indexed to, uint value);
	event Approval(address indexed owner, address indexed spender, uint value);
	
	function name() external pure returns (string memory);
	function symbol() external pure returns (string memory);
	function decimals() external pure returns (uint8);
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
	
	/*** Collateral ***/
	
	function borrowable0() external view returns (address);
	function borrowable1() external view returns (address);
	function simpleUniswapOracle() external view returns (address);
	function safetyMarginSqrt() external view returns (uint);
	function liquidationIncentive() external view returns (uint);
	function liquidationFee() external view returns (uint);
	function liquidationPenalty() external view returns (uint);
	
	function getTwapPrice112x112() external returns(uint224 twapPrice112x112);
	function getPrices() external returns (uint price0, uint price1);
	function tokensUnlocked(address from, uint value) external returns (bool);
	function accountLiquidityAmounts(address account, uint amount0, uint amount1) external returns (uint liquidity, uint shortfall);
	function accountLiquidity(address account) external returns (uint liquidity, uint shortfall);
	function canBorrow(address account, address borrowable, uint accountBorrows) external returns (bool);
	function seize(address liquidator, address borrower, uint repayAmount) external returns (uint seizeTokens);
	function flashRedeem(address redeemer, uint redeemAmount, bytes calldata data) external;
	
	/*** Collateral Setter ***/
	
	event NewSafetyMargin(uint newSafetyMarginSqrt);
	event NewLiquidationIncentive(uint newLiquidationIncentive);
	event NewLiquidationFee(uint newLiquidationFee);

	function SAFETY_MARGIN_SQRT_MIN() external pure returns (uint);
	function SAFETY_MARGIN_SQRT_MAX() external pure returns (uint);
	function LIQUIDATION_INCENTIVE_MIN() external pure returns (uint);
	function LIQUIDATION_INCENTIVE_MAX() external pure returns (uint);
	function LIQUIDATION_FEE_MAX() external pure returns (uint);
	
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

// File: contracts\ImpermaxV2SolidlyRouter01.sol

pragma solidity =0.5.16;





contract ImpermaxV2SolidlyRouter01 is ImpermaxV2BaseRouter01 {

	constructor(address _factory, address _WETH) public ImpermaxV2BaseRouter01(_factory, _WETH) {}
	
	/*** Primitive Actions ***/
	
	function _mintUniV2Internal(
		LendingPool memory pool,
		address msgSender,
		uint lpAmountUser,
		uint amount0User,
		uint amount1User,
		uint amount0Router,
		uint amount1Router
	) internal {
		address uniswapV2Pair = IStakedLPToken(pool.lp).underlying();
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
		
		// add liquidity to uniswap pair
		if (amount0User > 0) ImpermaxPermit.safeTransferFrom(pool.tokens[0], msgSender, uniswapV2Pair, amount0User);
		if (amount1User > 0) ImpermaxPermit.safeTransferFrom(pool.tokens[1], msgSender, uniswapV2Pair, amount1User);
		if (amount0Router > 0) TransferHelper.safeTransfer(pool.tokens[0], uniswapV2Pair, amount0Router);
		if (amount1Router > 0) TransferHelper.safeTransfer(pool.tokens[1], uniswapV2Pair, amount1Router);
		// mint LP token
		if (amount0User + amount0Router > 0) ISolidlyPair(uniswapV2Pair).mint(pool.lp);
		if (lpAmountUser > 0) ImpermaxPermit.safeTransferFrom(uniswapV2Pair, msgSender, pool.lp, lpAmountUser);
		IStakedLPToken(pool.lp).mint(pool.collateral);
		// mint collateral
		ICollateralV2(pool.collateral).mint(msgSender);
	}
	function _mintUniV2(
		LendingPool memory pool,
		address msgSender,
		uint lpAmountUser,
		uint amount0Desired,	// intended as user amount
		uint amount1Desired,	// intended as user amount
		uint amount0Min,
		uint amount1Min
	) internal {
		address uniswapV2Pair = IStakedLPToken(pool.lp).underlying();
		(uint amount0, uint amount1) = _optimalLiquidityUniV2(uniswapV2Pair, amount0Desired, amount1Desired, amount0Min, amount1Min);
		_mintUniV2Internal(pool, msgSender, lpAmountUser, amount0, amount1, 0, 0);
	}
	
	function _redeemUniV2Step1(
		LendingPool memory pool,
		address msgSender,
		uint percentage,
		uint amount0Min,
		uint amount1Min,
		address to,
		Actions.Action memory nextAction
	) internal {
		require(percentage > 0, "ImpermaxRouter: REDEEM_ZERO");
		uint redeemTokens = IERC20(pool.collateral).balanceOf(msgSender).mul(percentage).div(1e18); 
		bytes memory encoded = abi.encode(RedeemCallbackData({
			pool: pool,
			msgSender: msgSender,
			redeemTo: to,
			redeemTokens: redeemTokens,
			amount0Min: amount0Min,
			amount1Min: amount1Min,
			nextAction: nextAction
		}));
		uint exchangeRate = ICollateralV2(pool.collateral).exchangeRate();
		uint redeemAmount = (redeemTokens - 1).mul(exchangeRate).div(1e18);
		ICollateralV2(pool.collateral).flashRedeem(address(this), redeemAmount, encoded);
	}
	function _redeemStep2(
		LendingPool memory pool,
		uint amount0Min,
		uint amount1Min,
		address to
	) internal {
		uint redeemAmount = IStakedLPToken(pool.lp).balanceOf(address(this));
		address uniswapV2Pair = IStakedLPToken(pool.lp).underlying();
		IStakedLPToken(pool.lp).transfer(pool.lp, redeemAmount);
		IStakedLPToken(pool.lp).redeem(uniswapV2Pair);
		(uint amount0, uint amount1) = ISolidlyPair(uniswapV2Pair).burn(to);
		require(amount0 >= amount0Min, "ImpermaxRouter: INSUFFICIENT_0_AMOUNT");
		require(amount1 >= amount1Min, "ImpermaxRouter: INSUFFICIENT_1_AMOUNT");
	}
	
	
	/*** Composite Actions ***/
	
	function _borrowAndMintUniV2(
		LendingPool memory pool,
		uint lpAmountUser,
		uint amount0User,
		uint amount1User,
		uint amount0Desired,	// intended as user amount + router amount
		uint amount1Desired,	// intended as user amount + router amount
		uint amount0Min,		// intended as user amount + router amount
		uint amount1Min			// intended as user amount + router amount
	) internal view returns (Actions.Action[] memory a) {
		address uniswapV2Pair = IStakedLPToken(pool.lp).underlying();
		(uint amount0, uint amount1) = _optimalLiquidityUniV2(uniswapV2Pair, amount0Desired, amount1Desired, amount0Min, amount1Min);
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
		a[a.length-1] = Actions.getMintUniV2InternalAction(lpAmountUser, amount0 - amount0Router, amount1 - amount1Router, amount0Router, amount1Router);
	}
	
	/*** EXECUTE ***/
	
	function _execute(
		LendingPool memory pool,
		address msgSender,
		Actions.Action memory action
	) internal {
		if (action.actionType == Actions.Type.NO_ACTION) return;
		Actions.Action memory nextAction = abi.decode(action.nextAction, (Actions.Action));
		if (action.actionType == Actions.Type.MINT_UNIV2_INTERNAL) {
			Actions.MintUniV2InternalData memory decoded = abi.decode(action.actionData, (Actions.MintUniV2InternalData));
			_mintUniV2Internal(
				pool,
				msgSender,
				decoded.lpAmountUser,
				decoded.amount0User,
				decoded.amount1User,
				decoded.amount0Router,
				decoded.amount1Router
			);
		}
		else if (action.actionType == Actions.Type.MINT_UNIV2) {
			Actions.MintUniV2Data memory decoded = abi.decode(action.actionData, (Actions.MintUniV2Data));
			_mintUniV2(
				pool,
				msgSender,
				decoded.lpAmountUser,
				decoded.amount0Desired,
				decoded.amount1Desired,
				decoded.amount0Min,
				decoded.amount1Min
			);
		}
		else if (action.actionType == Actions.Type.REDEEM_UNIV2) {
			Actions.RedeemUniV2Data memory decoded = abi.decode(action.actionData, (Actions.RedeemUniV2Data));
			_redeemUniV2Step1(
				pool,
				msgSender,
				decoded.percentage,
				decoded.amount0Min,
				decoded.amount1Min,
				decoded.to,
				nextAction
			);
			return;
		}
		else if (action.actionType == Actions.Type.BORROW_AND_MINT_UNIV2) {
			Actions.BorrowAndMintUniV2Data memory decoded = abi.decode(action.actionData, (Actions.BorrowAndMintUniV2Data));
			Actions.Action[] memory actions = _borrowAndMintUniV2(
				pool,
				decoded.lpAmountUser,
				decoded.amount0User,
				decoded.amount1User,
				decoded.amount0Desired,
				decoded.amount1Desired,
				decoded.amount0Min,
				decoded.amount1Min
			);
			nextAction = Actions.actionsSorter(actions, nextAction);
		}
		else return super._execute(pool, msgSender, action);
		
		return _execute(
			pool,
			msgSender,
			nextAction
		);
	}
	
	/*** Utilities ***/
	
	function _optimalLiquidityUniV2(
		address uniswapV2Pair,
		uint amount0Desired,
		uint amount1Desired,
		uint amount0Min,
		uint amount1Min
	) public view returns (uint amount0, uint amount1) {
		if (amount0Desired == 0) return (0, 0);
		(uint reserve0, uint reserve1,) = ISolidlyPair(uniswapV2Pair).getReserves();
		uint amount1Optimal = UniswapV2Library.quote(amount0Desired, reserve0, reserve1);
		if (amount1Optimal <= amount1Desired) {
			require(amount1Optimal >= amount1Min, "ImpermaxRouter: INSUFFICIENT_1_AMOUNT");
			(amount0, amount1) = (amount0Desired, amount1Optimal);
		} else {
			uint amount0Optimal = UniswapV2Library.quote(amount1Desired, reserve1, reserve0);
			assert(amount0Optimal <= amount0Desired);
			require(amount0Optimal >= amount0Min, "ImpermaxRouter: INSUFFICIENT_0_AMOUNT");
			(amount0, amount1) = (amount0Optimal, amount1Desired);
		}
	}
}

