/*


//SPDX-License-Identifier: BUSL-1.1
Copyright 2024 Guru Network ftm1337@protonmail.com
Copyright 2024 Equalizer Exchange

Business Source License 1.1

License text copyright (c) 2017 MariaDB Corporation Ab, All Rights Reserved.
"Business Source License" is a trademark of MariaDB Corporation Ab.

-----------------------------------------------------------------------------

Parameters

Licensor:             Guru Network & Equalizer Exchange

Licensed Work:        eLOCKS, eLockerRoom, eLOCK, Art & Solidity Smart Contracts,
                      eLOCKS NFT, Artwork, Metadata, tangible or intangible parts,
                      or parts of, or any software or property derived therefrom.
                      The Licensed Work is (c) 2024 Guru Network and
                      the Licensed Work is (c) 2024 Equalizer Exchange

Additional Use Grant: Any uses listed and defined at
                      any Self-addressed transactions on Ethereum Mainnet from
                      0x167d87a906da361a10061fe42bbe89451c2ee584 with
                      explicit expression of Additional Use Grant

Change Date:          The earlier of 2028-12-31 or a date specified at
                      any Self-addressed transactions on Ethereum Mainnet from
                      0x167d87a906da361a10061fe42bbe89451c2ee584 with
                      explicit expression of Change Date

Change License:       GNU General Public License v2.0 or later

-----------------------------------------------------------------------------

Terms

The Licensor hereby grants you the right to copy, modify, create derivative
works, redistribute, and make non-production use of the Licensed Work. The
Licensor may make an Additional Use Grant, above, permitting limited
production use.

Effective on the Change Date, or the seventh anniversary of the first publicly
available distribution of a specific version of the Licensed Work under this
License, whichever comes first, the Licensor hereby grants you rights under
the terms of the Change License, and the rights granted in the paragraph
above terminate.

If your use of the Licensed Work does not comply with the requirements
currently in effect as described in this License, you must purchase a
commercial license from the Licensor, its affiliated entities, or authorized
resellers, or you must refrain from using the Licensed Work.

All copies of the original and modified Licensed Work, and derivative works
of the Licensed Work, are subject to this License. This License applies
separately for each version of the Licensed Work and the Change Date may vary
for each version of the Licensed Work released by Licensor.

You must conspicuously display this License on each original or modified copy
of the Licensed Work. If you receive the Licensed Work in original or
modified form from a third party, the terms and conditions set forth in this
License apply to your use of that work.

Any use of the Licensed Work in violation of this License will automatically
terminate your rights under this License for the current and all other
versions of the Licensed Work.

This License does not grant you any right in any trademark or logo of
Licensor or its affiliates (provided that you may use a trademark or logo of
Licensor as expressly required by this License).

TO THE EXTENT PERMITTED BY APPLICABLE LAW, THE LICENSED WORK IS PROVIDED ON
AN "AS IS" BASIS. LICENSOR HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS,
EXPRESS OR IMPLIED, INCLUDING (WITHOUT LIMITATION) WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, NON-INFRINGEMENT, AND
TITLE.

MariaDB hereby grants you permission to use this License’s text to license
your works, and to refer to it using the trademark "Business Source License",
as long as you comply with the Covenants of Licensor below.

-----------------------------------------------------------------------------

Covenants of Licensor

In consideration of the right to use this License’s text and the "Business
Source License" name and trademark, Licensor covenants to MariaDB, and to all
other recipients of the licensed work to be provided by Licensor:

1. To specify as the Change License the GPL Version 2.0 or any later version,
   or a license that is compatible with GPL Version 2.0 or a later version,
   where "compatible" means that software provided under the Change License can
   be included in a program with software provided under GPL Version 2.0 or a
   later version. Licensor may specify additional Change Licenses without
   limitation.

2. To either: (a) specify an additional grant of rights to use that does not
   impose any additional restriction on the right granted in this License, as
   the Additional Use Grant; or (b) insert the text "None".

3. To specify a Change Date.

4. Not to modify this License in any other way.

-----------------------------------------------------------------------------

Notice

The Business Source License (this document, or the "License") is not an Open
Source license. However, the Licensed Work will eventually be made available
under an Open Source License, as stated in this License.



-----------------------------------------------------------------------------
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
-----------------------------------------------------------------------------







FFFFF  TTTTTTT  M   M         GGGGG  U    U  RRRRR     U    U
FF       TTT   M M M M       G       U    U  RR   R    U    U
FFFFF    TTT   M  M  M      G  GGG   U    U  RRRRR     U    U
FF       TTT   M  M  M   O  G    G   U    U  RR R      U    U
FF       TTT   M     M       GGGGG    UUUU   RR  RRR    UUUU

					https://eliteness.network


						Contact us at:
			https://discord.com/invite/QpyfMarNrV
					https://t.me/FTM1337

	Community Mediums:
		https://medium.com/@ftm1337
		https://twitter.com/ftm1337
*/
pragma solidity 0.8.9;

interface IERC20 {
	function balanceOf(address) external view returns (uint256);
	function totalSupply() external view returns (uint256);
	function decimals() external view returns (uint256);
	function symbol() external view returns (string memory);
	function name() external view returns (string memory);

	function approve(address, uint) external returns (bool);
	function transfer(address, uint) external returns (bool);
	function transferFrom(address, address, uint) external returns (bool);
}
// File: @openzeppelin/contracts-/utils/introspection/IERC165.sol


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

// File: @openzeppelin/contracts-/token/ERC721/IERC721.sol


// OpenZeppelin Contracts (last updated v4.7.0) (token/ERC721/IERC721.sol)

pragma solidity ^0.8.0;


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
	function safeTransferFrom(
		address from,
		address to,
		uint256 tokenId,
		bytes calldata data
	) external;

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

interface IPair is IERC20 {
	function token0() external view returns (address);
	function token1() external view returns (address);
	function metadata() external view returns (uint256 dec0, uint256 dec1, uint256 r0, uint256 r1, bool st, address t0, address t1);

	function claimFees() external returns (uint,uint);
}

interface IVoter {
	function gauges(address pool) external view returns(IGauge);
	function factory() external view returns(IFactory);
}

interface IFactory {
	function isPair(address) external view returns (bool);
}

interface IGauge is IPair {
	function rewardTokens(uint) external view returns(IERC20);
	function rewardsListLength() external view returns (uint);

	function depositAll() external;
	function withdrawAll() external;
	function getReward(address, IERC20[] memory) external;
}

interface IeLocker {

	struct Referral {
		address agent;
		uint percent;
	}

	function pool() external view returns(IPair);
	function expiry() external view returns (uint256);
	function totalSupply() external view returns(uint);
	function gauge() external view returns(IGauge);
	function earner() external view returns(address);
	function apr() external view returns(uint);
	function tvl() external view returns(uint);
	function allEarnings() external view returns(IERC20[] memory, uint[] memory, uint[] memory, string[] memory);
	function referral() external view returns(Referral memory);
	function claimableFees() external view returns(uint, uint);
	function claimableRewards() external view returns(uint[] memory);

	function initialize(IPair _lp, uint _expiry, Referral memory _ref) external;
	function relock(uint _amt, uint _date) external;
	function increaseAmount(uint _amt) external;
	function extendDate(uint _date) external;
	function transferFrom(address,address,uint) external;
}

interface IArt {
	function _tokenURI(uint _tokenId) external view returns (string memory output);
	function _lockInfo(uint _lockID) external view returns (address[7] memory, uint[11] memory, uint[] memory, IERC20[] memory _rt, uint[] memory _ra, uint[] memory _rd, string[] memory _rs, IeLocker.Referral memory, string[4] memory _str);
}

interface ITvlGuru {
	function getAssetPrice(address asset) external view returns (uint256);
}

interface IAprGuru {
	function getApr(address rewarder) external view returns (uint256);
}

contract Clone {
	function clone(address implementation) internal returns (address instance) {
		assembly {
			let ptr := mload(0x40)
			mstore(ptr, 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000000000000000000000)
			mstore(add(ptr, 0x14), shl(0x60, implementation))
			mstore(add(ptr, 0x28), 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000)
			instance := create(0, ptr, 0x37)
		}
		require(instance != address(0), "Cl0");
	}
}


// File: @openzeppelin/contracts-/token/ERC721/IERC721Receiver.sol


// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC721/IERC721Receiver.sol)

pragma solidity ^0.8.0;

/**
 * @title ERC721 token receiver interface
 * @dev Interface for any contract that wants to support safeTransfers
 * from ERC721 asset contracts.
 */
interface IERC721Receiver {
	/**
	 * @dev Whenever an {IERC721} `tokenId` token is transferred to this contract via {IERC721-safeTransferFrom}
	 * by `operator` from `from`, this function is called.
	 *
	 * It must return its Solidity selector to confirm the token transfer.
	 * If any other value is returned or the interface is not implemented by the recipient, the transfer will be reverted.
	 *
	 * The selector can be obtained in Solidity with `IERC721Receiver.onERC721Received.selector`.
	 */
	function onERC721Received(
		address operator,
		address from,
		uint256 tokenId,
		bytes calldata data
	) external returns (bytes4);
}


pragma solidity 0.8.9;

/// [MIT License]
/// @title Base64
/// @notice Provides a function for encoding some bytes in base64
/// @author Brecht Devos <brecht@loopring.org>

library Base64 {
	bytes internal constant TABLE = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

	/// @notice Encodes some bytes to the base64 representation
	function encode(bytes memory data) internal pure returns (string memory) {
		uint len = data.length;
		if (len == 0) return "";

		// multiply by 4/3 rounded up
		uint encodedLen = 4 * ((len + 2) / 3);

		// Add some extra buffer at the end
		bytes memory result = new bytes(encodedLen + 32);

		bytes memory table = TABLE;

		assembly {
			let tablePtr := add(table, 1)
			let resultPtr := add(result, 32)

			for {
				let i := 0
			} lt(i, len) {

			} {
				i := add(i, 3)
				let input := and(mload(add(data, i)), 0xffffff)

				let out := mload(add(tablePtr, and(shr(18, input), 0x3F)))
				out := shl(8, out)
				out := add(out, and(mload(add(tablePtr, and(shr(12, input), 0x3F))), 0xFF))
				out := shl(8, out)
				out := add(out, and(mload(add(tablePtr, and(shr(6, input), 0x3F))), 0xFF))
				out := shl(8, out)
				out := add(out, and(mload(add(tablePtr, and(input, 0x3F))), 0xFF))
				out := shl(224, out)

				mstore(resultPtr, out)

				resultPtr := add(resultPtr, 4)
			}

			switch mod(len, 3)
			case 1 {
				mstore(sub(resultPtr, 2), shl(240, 0x3d3d))
			}
			case 2 {
				mstore(sub(resultPtr, 1), shl(248, 0x3d))
			}

			mstore(result, encodedLen)
		}

		return string(result);
	}
}


contract Guard {
	/// @dev reentrancy guard
	bool internal _locked;

	modifier guarded() {
		require(!_locked, "No re-entrancy");
		_locked = true;
		_;
		_locked = false;
	}
}

contract eLOCKS is Guard, Clone, IERC721 {

	/// @dev ERC165 interface ID of ERC165
	bytes4 internal constant ERC165_INTERFACE_ID = 0x01ffc9a7;

	/// @dev ERC165 interface ID of ERC721
	bytes4 internal constant ERC721_INTERFACE_ID = 0x80ac58cd;

	/// @dev ERC165 interface ID of ERC721Metadata
	bytes4 internal constant ERC721_METADATA_INTERFACE_ID = 0x5b5e139f;

	/// @dev Mapping of interface id to bool about whether or not it's supported
	mapping(bytes4 => bool) internal supportedInterfaces;

	IArt public art;
	IVoter public voter;
	IFactory public factory;
	ITvlGuru public TvlGuru;
	IAprGuru public AprGuru;

	address public admin;
	address public feeSynthesizer;

	/// @dev Current count of token
	uint internal tokenId;

	IeLocker public design;
	mapping(uint => IeLocker) public lockers;
	mapping(uint => IeLocker.Referral) public referrals;

	uint public protocolFee;


	event LockCreated(address indexed by, address indexed to, address indexed pool, uint amount, uint expiry, address agent, uint percent);
	event Recovered(address,uint);


	function initialize(IeLocker _design, IArt _art, IVoter _vtr) external {
		require(admin == address(0), "!reinit");
		art = _art;
		design = _design;
		voter = _vtr;
		factory = _vtr.factory();
		supportedInterfaces[ERC165_INTERFACE_ID] = true;
		supportedInterfaces[ERC721_INTERFACE_ID] = true;
		supportedInterfaces[ERC721_METADATA_INTERFACE_ID] = true;
		admin = msg.sender;
		feeSynthesizer = msg.sender;
		protocolFee = 0.048e18;
		// mint-ish
		emit Transfer(address(0), address(this), tokenId);
		// burn-ish
		emit Transfer(address(this), address(0), tokenId);
	}


	/*///////////////////////////////////////////////////////////////
			              METADATA & STORAGE
	//////////////////////////////////////////////////////////////*/

	function name() public pure returns(string memory) {
		return unicode"eLOCKS: Yield-Paying Liquidity Lockers 🔐";
	}

	function symbol() public pure returns(string memory) {
		return "eLOCKS";
	}

	/// @dev Returns current token URI metadata
	/// @param _tokenId Token ID to fetch URI for.
	function tokenURI(uint _tokenId) external view returns (string memory) {
		return art._tokenURI(_tokenId);
	}


	/*//////////////////////////////////////////////////////////////
			          ERC721 BALANCE/OWNER STORAGE
	//////////////////////////////////////////////////////////////*/

	/// @dev Mapping from NFT ID to the address that owns it.
	mapping(uint => address) internal idToOwner;

	/// @dev Mapping from owner address to count of his tokens.
	mapping(address => uint) internal ownerToNFTokenCount;

	/// @dev Returns the address of the owner of the NFT.
	/// @param _tokenId The identifier for an NFT.
	function ownerOf(uint _tokenId) public view returns (address) {
		return idToOwner[_tokenId];
	}

	/// @dev Returns the number of NFTs owned by `_owner`.
	///      Throws if `_owner` is the zero address. NFTs assigned to the zero address are considered invalid.
	/// @param _owner Address for whom to query the balance.
	function _balance(address _owner) internal view returns (uint) {
		return ownerToNFTokenCount[_owner];
	}

	/// @dev Returns the number of NFTs owned by `_owner`.
	///      Throws if `_owner` is the zero address. NFTs assigned to the zero address are considered invalid.
	/// @param _owner Address for whom to query the balance.
	function balanceOf(address _owner) external view returns (uint) {
		return _balance(_owner);
	}

	/*//////////////////////////////////////////////////////////////
			             ERC721 APPROVAL STORAGE
	//////////////////////////////////////////////////////////////*/

	/// @dev Mapping from NFT ID to approved address.
	mapping(uint => address) internal idToApprovals;

	/// @dev Mapping from owner address to mapping of operator addresses.
	mapping(address => mapping(address => bool)) internal ownerToOperators;

	mapping(uint => uint) public ownership_change;

	/// @dev Get the approved address for a single NFT.
	/// @param _tokenId ID of the NFT to query the approval of.
	function getApproved(uint _tokenId) external view returns (address) {
		return idToApprovals[_tokenId];
	}

	/// @dev Checks if `_operator` is an approved operator for `_owner`.
	/// @param _owner The address that owns the NFTs.
	/// @param _operator The address that acts on behalf of the owner.
	function isApprovedForAll(address _owner, address _operator) external view returns (bool) {
		return (ownerToOperators[_owner])[_operator];
	}

	/*//////////////////////////////////////////////////////////////
			                  ERC721 LOGIC
	//////////////////////////////////////////////////////////////*/

	/// @dev Set or reaffirm the approved address for an NFT. The zero address indicates there is no approved address.
	///      Throws unless `msg.sender` is the current NFT owner, or an authorized operator of the current owner.
	///      Throws if `_tokenId` is not a valid NFT. (NOTE: This is not written the EIP)
	///      Throws if `_approved` is the current owner. (NOTE: This is not written the EIP)
	/// @param _approved Address to be approved for the given NFT ID.
	/// @param _tokenId ID of the token to be approved.
	function approve(address _approved, uint _tokenId) public {
		address owner = idToOwner[_tokenId];
		// Throws if `_tokenId` is not a valid NFT
		require(owner != address(0));
		// Throws if `_approved` is the current owner
		require(_approved != owner);
		// Check requirements
		bool senderIsOwner = (idToOwner[_tokenId] == msg.sender);
		bool senderIsApprovedForAll = (ownerToOperators[owner])[msg.sender];
		require(senderIsOwner || senderIsApprovedForAll);
		// Set the approval
		idToApprovals[_tokenId] = _approved;
		emit Approval(owner, _approved, _tokenId);
	}

	/// @dev Enables or disables approval for a third party ("operator") to manage all of
	///      `msg.sender`'s assets. It also emits the ApprovalForAll event.
	///      Throws if `_operator` is the `msg.sender`. (NOTE: This is not written the EIP)
	/// @notice This works even if sender doesn't own any tokens at the time.
	/// @param _operator Address to add to the set of authorized operators.
	/// @param _approved True if the operators is approved, false to revoke approval.
	function setApprovalForAll(address _operator, bool _approved) external {
		// Throws if `_operator` is the `msg.sender`
		assert(_operator != msg.sender);
		ownerToOperators[msg.sender][_operator] = _approved;
		emit ApprovalForAll(msg.sender, _operator, _approved);
	}

	/* TRANSFER FUNCTIONS */
	/// @dev Clear an approval of a given address
	///      Throws if `_owner` is not the current owner.
	function _clearApproval(address _owner, uint _tokenId) internal {
		// Throws if `_owner` is not the current owner
		assert(idToOwner[_tokenId] == _owner);
		if (idToApprovals[_tokenId] != address(0)) {
			// Reset approvals
			idToApprovals[_tokenId] = address(0);
		}
	}

	/// @dev Returns whether the given spender can transfer a given token ID
	/// @param _spender address of the spender to query
	/// @param _tokenId uint ID of the token to be transferred
	/// @return bool whether the msg.sender is approved for the given token ID, is an operator of the owner, or is the owner of the token
	function _isApprovedOrOwner(address _spender, uint _tokenId) internal view returns (bool) {
		address owner = idToOwner[_tokenId];
		bool spenderIsOwner = owner == _spender;
		bool spenderIsApproved = _spender == idToApprovals[_tokenId];
		bool spenderIsApprovedForAll = (ownerToOperators[owner])[_spender];
		return spenderIsOwner || spenderIsApproved || spenderIsApprovedForAll;
	}

	function isApprovedOrOwner(address _spender, uint _tokenId) external view returns (bool) {
		return _isApprovedOrOwner(_spender, _tokenId);
	}

	/// @dev Exeute transfer of a NFT.
	///      Throws unless `msg.sender` is the current owner, an authorized operator, or the approved
	///      address for this NFT. (NOTE: `msg.sender` not allowed in internal function so pass `_sender`.)
	///      Throws if `_to` is the zero address.
	///      Throws if `_from` is not the current owner.
	///      Throws if `_tokenId` is not a valid NFT.
	function _transferFrom(
		address _from,
		address _to,
		uint _tokenId,
		address _sender
	) internal {
		require(_isApprovedOrOwner(_sender, _tokenId));
		// Clear approval. Throws if `_from` is not the current owner
		_clearApproval(_from, _tokenId);
		// Remove NFT. Throws if `_tokenId` is not a valid NFT
		_removeTokenFrom(_from, _tokenId);
		// Add NFT
		_addTokenTo(_to, _tokenId);
		// Set the block of ownership transfer (for Flash NFT protection)
		ownership_change[_tokenId] = block.number;
		// Log the transfer
		emit Transfer(_from, _to, _tokenId);

		// Transfer in underlying eLOCKS.locker
		lockers[_tokenId].transferFrom(_from,_to,_tokenId);
	}

	/// @dev Throws unless `msg.sender` is the current owner, an authorized operator, or the approved address for this NFT.
	///      Throws if `_from` is not the current owner.
	///      Throws if `_to` is the zero address.
	///      Throws if `_tokenId` is not a valid NFT.
	/// @notice The caller is responsible to confirm that `_to` is capable of receiving NFTs or else
	///        they maybe be permanently lost.
	/// @param _from The current owner of the NFT.
	/// @param _to The new owner.
	/// @param _tokenId The NFT to transfer.
	function transferFrom(
		address _from,
		address _to,
		uint _tokenId
	) external {
		_transferFrom(_from, _to, _tokenId, msg.sender);
	}

	/// @dev Transfers the ownership of an NFT from one address to another address.
	///      Throws unless `msg.sender` is the current owner, an authorized operator, or the
	///      approved address for this NFT.
	///      Throws if `_from` is not the current owner.
	///      Throws if `_to` is the zero address.
	///      Throws if `_tokenId` is not a valid NFT.
	///      If `_to` is a smart contract, it calls `onERC721Received` on `_to` and throws if
	///      the return value is not `bytes4(keccak256("onERC721Received(address,address,uint,bytes)"))`.
	/// @param _from The current owner of the NFT.
	/// @param _to The new owner.
	/// @param _tokenId The NFT to transfer.
	function safeTransferFrom(
		address _from,
		address _to,
		uint _tokenId
	) external {
		safeTransferFrom(_from, _to, _tokenId, "");
	}

	function _isContract(address account) internal view returns (bool) {
		// This method relies on extcodesize, which returns 0 for contracts in
		// construction, since the code is only stored at the end of the
		// constructor execution.
		uint size;
		assembly {
			size := extcodesize(account)
		}
		return size > 0;
	}

	/// @dev Transfers the ownership of an NFT from one address to another address.
	///      Throws unless `msg.sender` is the current owner, an authorized operator, or the
	///      approved address for this NFT.
	///      Throws if `_from` is not the current owner.
	///      Throws if `_to` is the zero address.
	///      Throws if `_tokenId` is not a valid NFT.
	///      If `_to` is a smart contract, it calls `onERC721Received` on `_to` and throws if
	///      the return value is not `bytes4(keccak256("onERC721Received(address,address,uint,bytes)"))`.
	/// @param _from The current owner of the NFT.
	/// @param _to The new owner.
	/// @param _tokenId The NFT to transfer.
	/// @param _data Additional data with no specified format, sent in call to `_to`.
	function safeTransferFrom(
		address _from,
		address _to,
		uint _tokenId,
		bytes memory _data
	) public {
		_transferFrom(_from, _to, _tokenId, msg.sender);

		if (_isContract(_to)) {
			// Throws if transfer destination is a contract which does not implement 'onERC721Received'
			try IERC721Receiver(_to).onERC721Received(msg.sender, _from, _tokenId, _data) returns (bytes4 response) {
			    if (response != IERC721Receiver(_to).onERC721Received.selector) {
			        revert("ERC721: ERC721Receiver rejected tokens");
			    }
			} catch (bytes memory reason) {
			    if (reason.length == 0) {
			        revert("ERC721: transfer to non ERC721Receiver implementer");
			    } else {
			        assembly {
			            revert(add(32, reason), mload(reason))
			        }
			    }
			}
		}
	}

	/*//////////////////////////////////////////////////////////////
			                  ERC165 LOGIC
	//////////////////////////////////////////////////////////////*/

	/// @dev Interface identification is specified in ERC-165.
	/// @param _interfaceID Id of the interface
	function supportsInterface(bytes4 _interfaceID) external view returns (bool) {
		return supportedInterfaces[_interfaceID];
	}

	/*//////////////////////////////////////////////////////////////
			            INTERNAL MINT/BURN LOGIC
	//////////////////////////////////////////////////////////////*/

	/// @dev Mapping from owner address to mapping of index to tokenIds
	mapping(address => mapping(uint => uint)) internal ownerToNFTokenIdList;

	/// @dev Mapping from NFT ID to index of owner
	mapping(uint => uint) internal tokenToOwnerIndex;

	/// @dev  Get token by index
	function tokenOfOwnerByIndex(address _owner, uint _tokenIndex) external view returns (uint) {
		return ownerToNFTokenIdList[_owner][_tokenIndex];
	}

	/// @dev Add a NFT to an index mapping to a given address
	/// @param _to address of the receiver
	/// @param _tokenId uint ID Of the token to be added
	function _addTokenToOwnerList(address _to, uint _tokenId) internal {
		uint current_count = _balance(_to);

		ownerToNFTokenIdList[_to][current_count] = _tokenId;
		tokenToOwnerIndex[_tokenId] = current_count;
	}

	/// @dev Add a NFT to a given address
	///      Throws if `_tokenId` is owned by someone.
	function _addTokenTo(address _to, uint _tokenId) internal {
		// Throws if `_tokenId` is owned by someone
		assert(idToOwner[_tokenId] == address(0));
		// Change the owner
		idToOwner[_tokenId] = _to;
		// Update owner token index tracking
		_addTokenToOwnerList(_to, _tokenId);
		// Change count tracking
		ownerToNFTokenCount[_to] += 1;
	}

	/// @dev Function to mint tokens
	///      Throws if `_to` is zero address.
	///      Throws if `_tokenId` is owned by someone.
	/// @param _to The address that will receive the minted tokens.
	/// @param _tokenId The token id to mint.
	/// @return A boolean that indicates if the operation was successful.
	function _mint(address _to, uint _tokenId) internal returns (bool) {
		// Throws if `_to` is zero address
		assert(_to != address(0));
		// Add NFT. Throws if `_tokenId` is owned by someone
		_addTokenTo(_to, _tokenId);
		emit Transfer(address(0), _to, _tokenId);
		return true;
	}

	/// @dev Remove a NFT from an index mapping to a given address
	/// @param _from address of the sender
	/// @param _tokenId uint ID Of the token to be removed
	function _removeTokenFromOwnerList(address _from, uint _tokenId) internal {
		// Delete
		uint current_count = _balance(_from) - 1;
		uint current_index = tokenToOwnerIndex[_tokenId];

		if (current_count == current_index) {
			// update ownerToNFTokenIdList
			ownerToNFTokenIdList[_from][current_count] = 0;
			// update tokenToOwnerIndex
			tokenToOwnerIndex[_tokenId] = 0;
		} else {
			uint lastTokenId = ownerToNFTokenIdList[_from][current_count];

			// Add
			// update ownerToNFTokenIdList
			ownerToNFTokenIdList[_from][current_index] = lastTokenId;
			// update tokenToOwnerIndex
			tokenToOwnerIndex[lastTokenId] = current_index;

			// Delete
			// update ownerToNFTokenIdList
			ownerToNFTokenIdList[_from][current_count] = 0;
			// update tokenToOwnerIndex
			tokenToOwnerIndex[_tokenId] = 0;
		}
	}

	/// @dev Remove a NFT from a given address
	///      Throws if `_from` is not the current owner.
	function _removeTokenFrom(address _from, uint _tokenId) internal {
		// Throws if `_from` is not the current owner
		assert(idToOwner[_tokenId] == _from);
		// Change the owner
		idToOwner[_tokenId] = address(0);
		// Update owner token index tracking
		_removeTokenFromOwnerList(_from, _tokenId);
		// Change count tracking
		ownerToNFTokenCount[_from] -= 1;
	}

	function _burn(uint _tokenId) internal {
		require(_isApprovedOrOwner(msg.sender, _tokenId), "caller is not owner nor approved");

		address owner = ownerOf(_tokenId);

		// Clear approval
		approve(address(0), _tokenId);
		// Remove token
		_removeTokenFrom(msg.sender, _tokenId);
		emit Transfer(owner, address(0), _tokenId);
	}



	/*///////////////////////////////////////////////////////////////
			                CREATE LOCKS
	//////////////////////////////////////////////////////////////*/


	function _createLockFor(IPair _lp, uint _amt, uint _exp, address _to, IeLocker.Referral memory _ref) internal returns(IeLocker _locker, uint _ID) {
		++tokenId;
		_ID = tokenId;
		_mint(_to, _ID);
		require(_lp.transferFrom(msg.sender, address(this), _amt), "CT1");
		_locker = IeLocker(clone(address(design)));
		_locker.initialize(_lp, _exp, _ref);
		require(_lp.approve(address(_locker), _amt), "CA1");
		_locker.increaseAmount(_amt);
		lockers[_ID]=_locker;
		referrals[_ID] = _ref;
		emit LockCreated(msg.sender,_to,address(_lp),_amt,_exp,_ref.agent,_ref.percent);
	}

	function createLock(IPair _lp, uint _amt, uint _exp) external guarded returns(IeLocker _locker, uint _ID) {
		return _createLockFor(_lp, _amt, _exp, msg.sender, IeLocker.Referral({agent:address(0),percent:0}));
	}

	function createLockFor(IPair _lp, uint _amt, uint _exp, address _to) external guarded returns(IeLocker _locker, uint _ID) {
		return _createLockFor(_lp, _amt, _exp, _to, IeLocker.Referral({agent:address(0),percent:0}));
	}

	function createLockWithReferral(IPair _lp, uint _amt, uint _exp, IeLocker.Referral memory _ref) external guarded returns(IeLocker _locker, uint _ID) {
		return _createLockFor(_lp, _amt, _exp, msg.sender, _ref);
	}

	function createLockWithReferralFor(IPair _lp, uint _amt, uint _exp, address _to, IeLocker.Referral memory _ref) external guarded returns(IeLocker _locker, uint _ID) {
		return _createLockFor(_lp, _amt, _exp, _to, _ref);
	}



	/*///////////////////////////////////////////////////////////////
			                ADMIN FUNCTIONS
	//////////////////////////////////////////////////////////////*/

	function setAdmin(address _new_admin) external {
		require(msg.sender == admin);
		admin = _new_admin;
	}

	function setArt(IArt _art) external {
		require(msg.sender == admin);
		art = _art;
	}

	function setDesign(IeLocker _design) external {
		require(msg.sender == admin);
		design = _design;
	}

	function setTvlGuru(ITvlGuru _t) external {
		require(msg.sender == admin);
		TvlGuru = _t;
	}

	function setAprGuru(IAprGuru _a) external {
		require(msg.sender == admin);
		AprGuru = _a;
	}

	function setFeeSynthesizer(address _fs, uint _fee) external {
		require(msg.sender == admin && _fs!=address(0));
		feeSynthesizer = _fs;
		require(_fee <= 1e18);
		protocolFee = _fee;
	}

    /// Useful for claiming random airdrops
    function rescue(uint _amt, address _token, address _to) external {
		require(msg.sender == admin);
        IERC20(_token).transfer(_to, _amt);
        emit Recovered(_token, _amt);
    }



	/*///////////////////////////////////////////////////////////////
			             HELPER VIEW FUNCTIONS
	//////////////////////////////////////////////////////////////*/

	function totalSupply() public view returns (uint) {
		return(tokenId);
	}

	function tokensOfOwner(address _usr) public view returns (uint[] memory) {
		uint _tbal = _balance(_usr);
		uint[] memory _ra = new uint[](_tbal);
		for(uint i;i<_tbal;i++) {
			_ra[i] = ownerToNFTokenIdList[_usr][i];
		}
		return _ra;
	}

	function lockedAssets(uint _lockID) public view returns (IPair, uint, uint) {
		IeLocker _locker = lockers[_lockID];
		return (_locker.pool() , _locker.totalSupply(), _locker.expiry());
	}

	function lockInfo(uint _lockID) public view returns (
		address[7] memory,
		uint[11] memory,
		uint[] memory,
		IERC20[] memory _rt,
		uint[] memory _ra,
		uint[] memory _rd,
		string[] memory _rs,
		IeLocker.Referral memory,
		string[4] memory _str
	) {
		return art._lockInfo(_lockID);
	}

}