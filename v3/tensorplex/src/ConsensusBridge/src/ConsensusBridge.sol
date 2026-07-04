pragma solidity 0.8.20;

import { SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";

// BridgeWrapper Interface implementing BridgeWrapper.sol
interface IBridgeWrapper {
    function receiveFromChain(uint16 _srcChainId, uint256 _amount, address _toAddress) external;
	function wToken() external returns (address);

}

// Errors
error InvalidValsetNonce(uint256 newNonce, uint256 currentNonce);
error InvalidBatchNonce(uint256 newNonce, uint256 currentNonce);
error IncorrectCheckpoint();
error MalformedNewValidatorSet();
error MalformedCurrentValidatorSet();
error MalformedBatch();
error InsufficientPower(uint256 cumulativePower, uint256 powerThreshold);
error DeadlineExceeded();
error NewPowerThresholdTooLow();
error InvalidSignature();

/**
 * @title ConsensusBridge
 * @author Tensorplex Lab
 * @notice This contract in addition to BridgeWrapper.sol, helps to facilitate the bridging of tokens from a given chain to Ethereum. 
 *         In the short-term we intend to use these contracts to bridge TAO from BitTensor to a new wrapped TAO on Ethereum.
 *         In the future we hope to reuse these contracts to bridge from future partner blockchains to Ethereum.
 * 
 *         Specifically this contract implements
 *           1. batch minting of wrapped Tokens on Ethereum in submitBatch()
 *           2. replacing current bridge validators in updateValset()
 * 
 * 		  To successfully execute submitBatch or updateValset, a checkpoint (hash) validation must be passed.
 * 		  In both functions, a new checkpoint (hash) is created with the input valset. 
 *        This checkpoint is checked against the bridge's state checkpoint. If they do not match the function will fail.
 *        This enforces that successful execution requires signatures from the state validators, ie. only the Tensorplex multisig wallet. 
 *        We expect to use our relayers as validators.
 * 
 */
contract ConsensusBridge is ReentrancyGuard{
	// Libraries
    using SafeERC20 for IERC20;

	// Variables
    bytes32 public immutable state_gravityId;
    uint256 public powerThreshold = 0;          // powerThreshold must be >= 2. If submitted powers < powerThreshold then the transaction will fail.
	uint256 public state_lastValsetNonce = 0; 
	uint256 public state_lastEventNonce = 0;
	bytes32 public state_lastValsetCheckpoint; // is a hash that is assigned whenever bridge validators are updated (see updateValset() ). 

	mapping(address => uint256) public state_lastBatchNonces;
	mapping(address => uint256) public state_lastTransactionNonce;
	
    struct ValsetArgs {
        // the validators in this set, represented by an Ethereum address
        address[] validators;

        // the powers of the given validators in the same order as above
		// powers is a generalized representation of the voting influence held by that validator. 
		// For our inital implementation we intend for all validators to have the same power value of 1.
		// In future deployments, powers might represent the # of governance tokens held by that validator.
        uint256[] powers;

		// Nonce value for a given valset, to prevent double execution. 
        uint256 valsetNonce;
    }

	// ECDSA Signature format
	struct Signature {
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

	// Events
    event TransactionBatchExecutedEvent(
		uint256 indexed _batchNonce,
		address indexed _token,
		uint256 _eventNonce
	);
    event ValsetUpdatedEvent(
		uint256 indexed _newValsetNonce,
		uint256 _eventNonce,
		address[] _validators,
		uint256[] _powers
	);
    event ReceiveFromChain(
		uint16 indexed _srcChainId,
		address indexed _to,
		uint _amount,
		address wToken,
		bytes32 txnId,
		uint256 transactionNonce
	);

	/**
	 * @notice initializes a ConsensusBridge contract.
	 * @param _gravityId A unique identifier for this gravity instance to use in signatures
	 * @param _validators is an array of validator addresses. These should be the addresses of the Tensorplex relayers. 
	 * @param _powers is an array of corresponding power values for the validators.
	 */
	constructor(
		bytes32 _gravityId,
		// The validator set, not in valset args format since many of it's arguments would never be used in this case
		address[] memory _validators,
		uint256[] memory _powers
	) {
		// CHECKS

		// Check that validators, powers, and signatures (v,r,s) set is well-formed
		if (_validators.length != _powers.length || _validators.length == 0) {
			revert MalformedCurrentValidatorSet();
		}

		// assigning inital valset
		ValsetArgs memory _valset;
		_valset = ValsetArgs(_validators, _powers, 0);

		bytes32 newCheckpoint = makeCheckpoint(_valset, _gravityId);

		// ACTIONS

		// If new powerThreshold is >= 2 then set the new powerThreshold, else revert. 
		uint256 newThreshold = calculatePowerThreshold(_powers);
		if (newThreshold >= 2) {
			powerThreshold = newThreshold;
		} else {
			revert NewPowerThresholdTooLow();
		}

		// set initial state checkpoint
		state_gravityId = _gravityId;
		state_lastValsetCheckpoint = newCheckpoint;

		// LOGS
		emit ValsetUpdatedEvent(
			state_lastValsetNonce,
			state_lastEventNonce,
			_validators,
			_powers
		);
	}

	/**
	 * @dev ceil is a helper function to round up. It is a workaround to solidity's default rounding down behaviour. 
	 * @dev used in PowerThreshold calculation to ensure that threshold is rounded up rather than down.
	 * 
	 * @param a is the input value to be rounded
	 * @param m is the decimal to be rounded to (eg 10 to round to closest 10)
	 */
	function ceil(uint a, uint m) private pure returns (uint ) {
        return ((a + m - 1) / m) * m;
    }

	/**
	 * @notice makeCheckpoint returns a checkpoint of an input valset
	 * @dev under the hood, this function returns a keccak256 hash of the valset and _gravityId. 
	 * @dev used internally by this contract, and is also called by our relayers.
	 * 
	 * @param _valsetArgs is the input valset that will be hashed
	 * @param _gravityId is the unique ID for this gravity instance to be used in signing. 
	 */
	function makeCheckpoint(ValsetArgs memory _valsetArgs, bytes32 _gravityId)
		public
		pure
		returns (bytes32)
	{
		// bytes32 encoding of the string "checkpoint"
		bytes32 methodName = 0x636865636b706f696e7400000000000000000000000000000000000000000000;

		bytes32 checkpoint = keccak256(
			abi.encode(
                _gravityId,
				methodName,
				_valsetArgs.valsetNonce,
				_valsetArgs.validators,
				_valsetArgs.powers
			)
		);

		return checkpoint;
	}

	/**
	 * @notice calculatePowerThreshold returns the threshold for an input valset that is necessary for a vote to pass. 
	 * @dev this is hardcoded to return 2/3rds of the input. 
	 * @dev because solidity rounds down on divsion, we use scaling factor to retain decimal value.
	 * @dev because we are using a scaling factor of 1e18, powers in excess of 5.79 * 10^76 could cause an interger overflow.
	 * 
	 * @param _powers is an array of power values. The threshold is calculated on the sum of this array.
	 */
    function calculatePowerThreshold(uint256[] memory _powers) internal returns (uint256) {
		uint256 totalPower = 0;
        for (uint256 i = 0; i < _powers.length; i++) {
            totalPower += _powers[i];
        }

		// numerator = 2
		// denominator = 3
		// scalingFactor = 1e18
		uint256 result = (totalPower * 2 * 1e18) / 3;
		powerThreshold = (ceil(result, 1e18) / 1e18);

		return powerThreshold;
    }

	/**
	 * @notice updateValset replaces the bridge's current valset with a new valset.
	 * @dev This function is expected to be called with the current validators.
	 * @dev To succeed, the checkpoint (hash) of input _currentValset must match the state valset checkpoint, 
	 *      meaning only the current validators can successfully call this function.
	 * @dev It is intended that only Tensorplex can successfully updateValset as enforced by this checkpoint matching.

	 * @param _newValset is the valset to be inserted
	 * @param _currentValset is the valset that is replaced
	 * @param _sigs is an array of signatures from _currentValset that have signed on the newValset.
	 */
	function updateValset(
		// The new version of the validator set
		ValsetArgs calldata _newValset,
		// The current validators that approve the change
		ValsetArgs calldata _currentValset,
		// These are arrays of the parts of the current validator's signatures
		Signature[] calldata _sigs
	) external {
		// Check that the valset nonce is greater than the old one
		if (_newValset.valsetNonce <= _currentValset.valsetNonce) {
			revert InvalidValsetNonce({
				newNonce: _newValset.valsetNonce,
				currentNonce: _currentValset.valsetNonce
			});
		}

		// Check that the valset nonce is less than a million nonces forward from the old one
		// this makes it difficult for an attacker to lock out the contract by getting a single
		// bad validator set through with uint256 max nonce
		if (_newValset.valsetNonce > _currentValset.valsetNonce + 1000000) {
			revert InvalidValsetNonce({
				newNonce: _newValset.valsetNonce,
				currentNonce: _currentValset.valsetNonce
			});
		}

		// Check that new validators and powers set is well-formed
		if (
			_newValset.validators.length != _newValset.powers.length ||
			_newValset.validators.length == 0
		) {
			revert MalformedNewValidatorSet();
		}

		// Check that current validators, powers, and signatures (v,r,s) set is well-formed
		validateValset(_currentValset, _sigs);

		// Check that the supplied current validator set matches the saved checkpoint
		if (makeCheckpoint(_currentValset, state_gravityId) != state_lastValsetCheckpoint) {
			revert IncorrectCheckpoint();
		}

		// Check that enough current validators have signed off on the new validator set
		bytes32 newCheckpoint = makeCheckpoint(_newValset, state_gravityId);

		// Checks that current valset has signed on newCheckpoint and that it has sufficient power to pass.
		checkValidatorSignatures(_currentValset, _sigs, newCheckpoint, powerThreshold);

		// If new powerThreshold is >= 2 then set the new powerThreshold, else revert. 
		uint256 newThreshold = calculatePowerThreshold(_newValset.powers);
		if (newThreshold >= 2) {
			powerThreshold = newThreshold;
		} else {
			revert NewPowerThresholdTooLow();
		}
		// ACTIONS

		// Stored to be used next time to validate that the valset
		// supplied by the caller is correct.
		state_lastValsetCheckpoint = newCheckpoint;

		// Store new nonce
		state_lastValsetNonce = _newValset.valsetNonce;

		state_lastEventNonce = state_lastEventNonce + 1;
		emit ValsetUpdatedEvent(
			_newValset.valsetNonce,
			state_lastEventNonce,
			_newValset.validators,
			_newValset.powers
		);
	}

	// @notice Ensures a valset is well-formed against input signatures
	// @param _valset is the valset to be validated
	// @param _sigs is an array of signatures
	function validateValset(ValsetArgs calldata _valset, Signature[] calldata _sigs) private pure {
		// Check that current validators, powers, and signatures (v,r,s) set is well-formed
		if (
			_valset.validators.length != _valset.powers.length ||
			_valset.validators.length != _sigs.length
		) {
			revert MalformedCurrentValidatorSet();
		}
	}

	/**
	 * @notice verifySig checks if a signed message _sig was created by the input address _signer.
	 * @param _signer is the expected address that signed _sig
	 * @param _theHash is the expected hash used to sign the message
	 * @param _sig is the signature containing (r,s,v)
	 */
    function verifySig(
		address _signer,
		bytes32 _theHash,
		Signature calldata _sig
	) private pure returns (bool) {
		bytes32 messageDigest = keccak256(
			abi.encodePacked("\x19Ethereum Signed Message:\n32", _theHash)
		);

		address retrievedSigner = ECDSA.recover(messageDigest, _sig.v, _sig.r, _sig.s);
		if(_signer != retrievedSigner) {
			return false;
		}
		return true;
	}

	/**
	 * @notice checkValidatorSignatures checks if the input validator set has signed on the input hash value. 
	 * @dev there is a 2/3rds quorum requirement. If 2/3rds of total validator power has signed, then the transaction can pass.
	 * 
	 * @param _currentValset is the expected currentValset
	 * @param _sigs is an array of signatures to be validated
	 * @param _theHash is the hash of the transaction that was signed
	 * @param _powerThreshold is the value of power required to pass a vote. Cumulative validator power must exceed this to pass.
	 */
	function checkValidatorSignatures(
		// The current validator set and their powers
		ValsetArgs calldata _currentValset,
		// The current validator's signatures
		Signature[] calldata _sigs,
		// This is what we are checking they have signed
		bytes32 _theHash,
		uint256 _powerThreshold
	) private pure {
		uint256 cumulativePower = 0;

		for (uint256 i = 0; i < _currentValset.validators.length; i++) {
			// V must be more than 0
			// If not we shall not process it 
			if(_sigs[i].v != 0) {
				// If v is set to 0, this signifies that it was not possible to get a signature from this validator and we skip evaluation
				// (In a valid signature, it is either 27 or 28)
				// Check that the current validator has signed off on the hash
				bool result = verifySig(_currentValset.validators[i], _theHash, _sigs[i]);
				if(!result) {
					revert InvalidSignature();
				}
				// Sum up cumulative power
				cumulativePower = cumulativePower + _currentValset.powers[i];
			}

			// Break early to avoid wasting gas
			if (cumulativePower > _powerThreshold) {
				break;
			}
		}

		if (cumulativePower < _powerThreshold) {
			revert InsufficientPower(cumulativePower, _powerThreshold);
		}
		// Success
	}

	/**
	 * @notice submitBatch batch executes minting of wrapped Token on Ethereum, sending tokens from the bridge to input addresses on Ethereum.
	 * @dev submitBatch should be triggered after corresponding events emitted on Finney
	 * @dev it is expected that this function is only called by Tensorplex validators.
	 * 
	 * @param _currentValset is expected to be the state valset. If it is not, the submission will fail.
	 * @param _sigs is a corresponding array of validator signatures
	 * @param _amounts is an array of amounts to be transferred
	 * @param _destinations is an array of destination EVM addresses that will recieve amounts. 
	 * @param _transactionIds is an array of transactionIds containing the hashes of corresponding transfer events from source chain.
	 * @param _sourceChainId a unqiue ID identifying the source chain. It is used by the Tensorplex relayers for record keeping.
	 * @param _batchNonce is the nonce.
	 * @param _tokenWrapperAddress is expected to be the address of a deployed BridgeWrapper.sol
	 * @param _deadline is the timestamp that the batch must be executed by. 
	 */
    function submitBatch(
		// The validators that approve the batch
		ValsetArgs calldata _currentValset,
		// These are arrays of the parts of the validators signatures
		Signature[] calldata _sigs,
		// The batch of transactions
		uint256[] calldata _amounts,
		address[] calldata _destinations,
		bytes32[] calldata _transactionIds,
        uint16 _sourceChainId,
		uint256 _batchNonce,
		address _tokenWrapperAddress,
		uint256 _deadline
    ) external nonReentrant {
		if (block.timestamp > _deadline) {
			revert DeadlineExceeded();
		}

        if (_batchNonce <= state_lastBatchNonces[_tokenWrapperAddress] || _batchNonce > state_lastBatchNonces[_tokenWrapperAddress] + 1000000) {
            revert InvalidBatchNonce({
                newNonce: _batchNonce,
                currentNonce: state_lastBatchNonces[_tokenWrapperAddress]
            });
        }

        validateValset(_currentValset, _sigs);
        if (_amounts.length != _destinations.length || _destinations.length != _transactionIds.length) {
            revert MalformedBatch();
        }

		// Check that the supplied current validator set matches the saved checkpoint
		if (makeCheckpoint(_currentValset, state_gravityId) != state_lastValsetCheckpoint) {
			revert IncorrectCheckpoint();
		}

        checkValidatorSignatures(
            _currentValset,
            _sigs,
            // Get hash of the transaction batch and checkpoint
            keccak256(
                abi.encode(
                    state_gravityId,
					// bytes encoding for bridge batching 
                    0x7472616e73616374696f6e426174636800000000000000000000000000000000,
                    _amounts,
                    _destinations,
					_transactionIds,
					_sourceChainId,
                    _batchNonce,
                    _tokenWrapperAddress,
					_deadline
                )
            ),
            powerThreshold
        );
        state_lastBatchNonces[_tokenWrapperAddress] = _batchNonce;
		state_lastEventNonce = state_lastEventNonce + 1;
        {
			// if any of the destination chains have a revert fallback, the whole function will revert
			// should be okay considering destinations are expected to be wallet addresses?
            for (uint256 i = 0; i < _destinations.length; i++) {
                address destination = _destinations[i];
                uint256 amount = _amounts[i];
				address wToken = IBridgeWrapper(_tokenWrapperAddress).wToken();
				bytes32 txnId = _transactionIds[i];
				uint256 oldTxnNonce = state_lastTransactionNonce[_tokenWrapperAddress];
				state_lastTransactionNonce[_tokenWrapperAddress] += 1;
                IBridgeWrapper(_tokenWrapperAddress).receiveFromChain(_sourceChainId, amount, destination);
				emit ReceiveFromChain(_sourceChainId, destination, amount, wToken, txnId, oldTxnNonce);
            }
        }
        {
			emit TransactionBatchExecutedEvent(_batchNonce, _tokenWrapperAddress, state_lastEventNonce);
		}
    }


}