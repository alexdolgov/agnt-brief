/**
 *Submitted for verification at BscScan.com on 2021-09-23
*/

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
     * The selector can be obtained in Solidity with `IERC721.onERC721Received.selector`.
     */
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}


/**
 * @dev Implementation of the {IERC721Receiver} interface.
 *
 * Accepts all token transfers.
 * Make sure the contract is able to use its token with {IERC721-safeTransferFrom}, {IERC721-approve} or {IERC721-setApprovalForAll}.
 */
contract ERC721Holder is IERC721Receiver {
    /**
     * @dev See {IERC721Receiver-onERC721Received}.
     *
     * Always returns `IERC721Receiver.onERC721Received.selector`.
     */
    function onERC721Received(
        address,
        address,
        uint256,
        bytes memory
    ) public virtual override returns (bytes4) {
        return this.onERC721Received.selector;
    }
}


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
    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

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
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

contract NFTAuction is ERC721Holder, Pausable, Ownable {
    address public paymentToken;
    address public feeCollector; //

    uint256 public feePecent; //e.g. 20% each bid
    uint256 public serviceFeePercent; // 3% from publiser's profit
    uint256 public commissionPercent; // 80% bidder take this
    uint256 public bidIncrement; // 10 %
    uint256 public auctionId;

    //Auction state
    enum State {
        Started,
        Running,
        Ended,
        Cancelled
    }

    struct Auction {
        uint256 id;
        uint256 tokenId;
        address tokenAddress;
        uint256 price; // wei
        uint256 startBlock; // second
        uint256 endTime; // time
        uint256 endTimeInit; // time
        State auctionState;
        uint256 highestBindingBid;
        address seller;
        address previousBidder;
        address highestBidder;
        mapping(address => uint256) bidderToAmount;
    }
    // auction id to auction detail
    mapping(uint256 => Auction) public auctionIdToAuction;
    // auction id to bidder address to profit
    mapping(uint256 => mapping(address => uint256)) public auctionUserProfit;
    // auction id to bidder address to bid amount
    mapping(uint256 => mapping(address => uint256)) public auctionUserBid;

    //ERC721 address => token id => auction flag
    mapping(address => mapping(uint256 => bool)) public hasAuction;

    event AuctionCreated(
        uint256 id,
        address seller,
        uint256 tokenId,
        address tokenAddress,
        uint256 price, // wei
        uint256 startBlock, // time
        uint256 endTime,
        State auctionState,
        uint256 highestBindingBid,
        address highestBidder
    );

    event AuctionBid(
        uint256 auctionId,
        address seller,
        address indexed bidder,
        address indexed tokenAddress,
        uint256 indexed tokenId,
        uint256 price
    );

    event AuctionEnded(
        uint256 auctionId,
        address seller,
        address indexed winner,
        address indexed tokenAddress,
        uint256 indexed tokenId,
        uint256 price
    );

    event AuctionCancelled(uint256 auctionId, uint256 tokenId);

    constructor(address _feeCollector, address _paymentToken) {
        feeCollector = _feeCollector;
        feePecent = 2000; // 20%
        bidIncrement = 1000; // 10% ~ 10*100
        paymentToken = _paymentToken;
        commissionPercent = 8000;
        serviceFeePercent = 300;
    }

    receive() external payable {}

    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a > b) {
            return b;
        }
        return a;
    }

    function setServiceInfo(
        address _feeCollector,
        address _paymentToken,
        uint256 _feePecent,
        uint256 _commissionPercent,
        uint256 _bidIncrementPercent,
        uint256 _serviceFeePercent
    ) external onlyOwner whenNotPaused {
        require(_feeCollector != address(0), "Invalid address");

        feeCollector = _feeCollector;
        feePecent = _feePecent;
        paymentToken = _paymentToken;
        commissionPercent = _commissionPercent;
        bidIncrement = _bidIncrementPercent;
        serviceFeePercent = _serviceFeePercent;
    }

    function emergencyWithdraw(
        address _tokenAddr,
        address _to,
        uint256 _amt
    ) external onlyOwner whenNotPaused {
        IERC20(_tokenAddr).transferFrom(address(this), _to, _amt);
    }

    /**
     * Always returns `IERC721Receiver.onERC721Received.selector`.
     */
    function onERC721Received(
        address,
        address,
        uint256,
        bytes memory
    ) public virtual override returns (bytes4) {
        return this.onERC721Received.selector;
    }

    // return BSCS quote amount (wei) base on percentage and price
    function getFeeBscs(uint256 pct, uint256 _price)
        private
        pure
        returns (uint256)
    {
        require(_price > 9999, "Price is too small");
        if (pct == 0) {
            return 0;
        }
        return (pct * _price) / 10000;
    }

    // return seller payment amount (wei) base on percentage and price
    function getSellerPayment(uint256 pct, uint256 _price)
        private
        pure
        returns (uint256)
    {
        //9999: so minimum percentage is 0.1% and price is 10000 wei
        require(_price > 9999, "Price is too small");

        uint256 sellerPct;
        if (pct < 10000) {
            sellerPct = 10000 - pct;
        } else {
            sellerPct = 10000;
        }
        return (sellerPct * _price) / 10000;
    }

    function createAuction(
        address _tokenAddress,
        uint256 _tokenId,
        uint256 _price,
        uint256 _endTime
    ) external whenNotPaused {
        require(
            !hasAuction[_tokenAddress][_tokenId],
            "Please cancel current auction first"
        );

        require(_endTime > (block.timestamp + 60), "Duration at least 1 minute");
        require(
            IERC721(_tokenAddress).ownerOf(_tokenId) == msg.sender,
            "You are not the owner"
        );

        IERC721(_tokenAddress).safeTransferFrom(
            msg.sender,
            address(this),
            _tokenId
        );

        Auction storage auction = auctionIdToAuction[auctionId];

        auction.id = auctionId;
        auction.seller = msg.sender;
        auction.tokenId = _tokenId;
        auction.tokenAddress = _tokenAddress;
        auction.price = _price;
        auction.startBlock = block.number;
        auction.endTime = _endTime;
        auction.endTimeInit = _endTime;
        auction.auctionState = State.Running;
        auction.highestBindingBid = 0;
        auction.highestBidder = address(0);
        auction.previousBidder = address(0);

        hasAuction[_tokenAddress][_tokenId] = true;

        emit AuctionCreated(
            auctionId,
            msg.sender,
            _tokenId,
            _tokenAddress,
            _price,
            block.number,
            _endTime,
            State.Running,
            0,
            address(0)
        );
        auctionId++;
    }

    function getPercentOfNumber(uint256 pct, uint256 num)
        private
        pure
        returns (uint256)
    {
        // Number is too small
        if (num <= 9999) {
            return 0;
        }
        
        if (pct == 0) {
            return 0;
        }
        return (pct * num) / 10000;
    }

    function placeBid(uint256 _auctionId) public payable whenNotPaused {
        Auction storage auction = auctionIdToAuction[_auctionId];

        require(msg.sender != auction.seller, "You are the onwer");
        require(
            block.number >= auction.startBlock,
            "Auction is not yet started"
        );
        require(block.timestamp < auction.endTime, "Auction is already ended");
        require(
            auction.auctionState == State.Running,
            "Auction is already ended or cancelled"
        );

        // highest bid plus 10%
        uint256 plusAmount = getPercentOfNumber(
            bidIncrement,
            auction.highestBindingBid
        );
        uint256 bidAmount = auction.highestBindingBid + plusAmount;
        // very first bid
        if (bidAmount == 0) {
            bidAmount = auction.price + getPercentOfNumber(
                bidIncrement,
                auction.price
                );
        }

        auction.highestBindingBid = bidAmount;
        auction.previousBidder = auction.highestBidder;
        auction.highestBidder = msg.sender;

        //assign current bid to the bidderToAmount, later on refund if not a winner
        auction.bidderToAmount[msg.sender] = bidAmount;

        // When the countdown is less than 1 hour, after each bid, the countdown will increase by 10 minutes,
        //and the maximum can be increased to 1 hour, 1hour equa 1200 blocks
        if ((auction.endTime - block.timestamp) < 3600 
            && ((auction.endTimeInit + 3600) > (auction.endTime + 600))) {
            auction.endTime = auction.endTime + 600; // add 10 min ~ 600s
        }

        // transferring payment to this contract
        if (
            IERC20(paymentToken).transferFrom(
                msg.sender,
                address(this),
                bidAmount
            )
        ) {
            auctionUserBid[_auctionId][msg.sender] = bidAmount;
            // transferring 80% of 10% increasement to previous bidder
            if (auction.previousBidder != address(0)) {
                uint256 commission = getPercentOfNumber(
                    commissionPercent,
                    plusAmount
                );
                auctionUserProfit[_auctionId][auction.previousBidder] = commission;
                IERC20(paymentToken).transferFrom(
                    address(this),
                    auction.previousBidder,
                    commission
                );
            }

            // transferring 20% of 10% increasement to fee collector
            uint256 acutionFee = getPercentOfNumber(feePecent, plusAmount);
            if (acutionFee > 0) {
                IERC20(paymentToken).transferFrom(
                    address(this),
                    feeCollector,
                    acutionFee
                );
            }
        }
        
        emit AuctionBid(
            auction.id,
            auction.seller,
            msg.sender,
            auction.tokenAddress,
            auction.tokenId,
            bidAmount
        );
    }

    function cancelAuction(uint256 _auctionId) public whenNotPaused {
        Auction storage auction = auctionIdToAuction[_auctionId];
        require(
            msg.sender == auction.seller,
            "placeBid: You are not the onwer"
        );
        require(
            block.number > auction.startBlock,
            "placeBid: Auction is not yet started"
        );
        require(
            block.timestamp < auction.endTime,
            "placeBid: Auction is already ended"
        );
        require(
            auction.auctionState == State.Running,
            "Auction is already ended or cancelled"
        );

        auction.auctionState = State.Cancelled;
        hasAuction[auction.tokenAddress][auction.tokenId] = false;

        IERC721(auction.tokenAddress).safeTransferFrom(
            address(this),
            auction.seller,
            auction.tokenId
        );

        emit AuctionCancelled(_auctionId, auction.tokenId);
    }

    // finishing the auction, transfering NFT and fund
    function finalizeAuction(uint256 _auctionId) public whenNotPaused {
        Auction storage auction = auctionIdToAuction[_auctionId];

        //Auction was Cancelled or the auction is ended
        require(
            auction.auctionState == State.Cancelled ||
                block.timestamp > auction.endTime,
            "Auction is not yet ended"
        );

        //The seller or bidder but he has bidded
        require(
            msg.sender == auction.seller ||
                auction.bidderToAmount[msg.sender] > 0,
            "You are not the seller or the bidder"
        );

        address recipient;
        uint256 value;

        // bidders
        if (auction.auctionState == State.Cancelled) {
            recipient = msg.sender;
            value = auction.bidderToAmount[msg.sender];
        } else {
            /* Auction is successfully ended */
            // nft owner
            if (msg.sender == auction.seller) {
                recipient = auction.seller;

                uint256 serviceFee = getPercentOfNumber(
                    serviceFeePercent,
                    auction.highestBindingBid
                );
                if (serviceFee > 0) {
                    IERC20(paymentToken).transferFrom(
                        address(this),
                        feeCollector,
                        serviceFee
                    );
                }

                value = getPercentOfNumber(
                    10000 - serviceFeePercent,
                    auction.highestBindingBid
                );
            } else {
                //bidder is the winner
                if (msg.sender == auction.highestBidder) {
                    value =
                        auction.bidderToAmount[auction.highestBidder] -
                        auction.highestBindingBid;
                    recipient = auction.highestBidder;

                    // transfering NFT to winner
                    IERC721(auction.tokenAddress).safeTransferFrom(
                        address(this),
                        recipient,
                        auction.tokenId
                    );
                } else {
                    value = auction.bidderToAmount[msg.sender];
                    recipient = msg.sender;
                }
            }
        }

        // resetting the bids of the recipient to avoid multiple transfers to the same recipient
        auction.bidderToAmount[recipient] = 0;

        hasAuction[auction.tokenAddress][auction.tokenId] = false;

        auction.auctionState = State.Ended;

        // transfering fund to seller or owner
        if (value > 0) {
            IERC20(paymentToken).transferFrom(address(this), recipient, value);
        }

        emit AuctionEnded(
            _auctionId,
            auction.seller,
            recipient,
            auction.tokenAddress,
            auction.tokenId,
            value
        );
    }

    function pause() public onlyOwner whenNotPaused {
        _pause();
    }

    function unpause() public onlyOwner whenPaused {
        _unpause();
    }
}