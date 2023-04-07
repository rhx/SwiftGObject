//  RefList.swift
//  GLib
//
//  Created by Rene Hexel on 5/1/21.
//  Copyright © 2021, 2022, 2023 Rene Hexel.  All rights reserved.
//
import CGLib
import GLib

/// Protocol for a reference `GList`, where each node represents a reference
/// type pointing to an underlying object.
///
/// The `RefListProtocol` protocol exposes the methods and properties of an underlying `GList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RefList`.
/// Alternatively, use `RefListRef` as a lighweight, `unowned` reference
/// if you already have an instance you just want to use.
///
/// - Note: This collection type is mainly for referencing GLib types.  For referencing primitive types, use `ReferenceListProtocol`.
public protocol RefListProtocol: ListProtocol, Swift.Sequence {
    /// The element contained in each `GList` node.
    associatedtype Element: ObjectProtocol
}

public extension RefListProtocol {
    /// Create an interator over a`ListRef`
    /// - Returns: a list iterator returning the Ref elements of the list
    @inlinable func makeIterator() -> RefListIterator<Element> {
        RefListIterator(_ptr)
    }

    /// Return the Ref data pointed to by the current element
    ///
    /// `Element` needs to be pointer size and a data type
    /// that wraps a pointer to an underlying `GLib` type
    /// (which typically is the case for `Ref` types).
    @inlinable var element: Element! {
        guard var data = data else { return nil }
        return withUnsafeBytes(of: &data) {
            $0.baseAddress.map {
                Element(raw: $0.assumingMemoryBound(to: UnsafeMutableRawPointer.self).pointee)
            }
        }
    }
}

/// The `RefList` class acts as a Ref wrapper around `GList`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
/// - Note: This collection type is mainly for referencing GLib types.  For referencing primitive types, use `ReferenceList`.
public class RefList<Element: ObjectProtocol>: List, RefListProtocol, ExpressibleByArrayLiteral {
    /// `true` to deallocate the associated list nodes on deinit.
    public var freeNodes = false
    /// `true` to deallocate the associated elements on deinit.
    public var freeElements = false
    /// Array literal initialiser
    ///
    /// This initialiser will always allocate memory for the given elements
    /// that will be freed upon deallocation.
    ///
    /// - Parameter elements: The elements to initialise the sequence with
    @inlinable required public init(arrayLiteral elements: Element...) {
        var last: UnsafeMutablePointer<GList>! = nil
        freeNodes = true
        for var element in elements.reversed() {
            last = g_list_prepend(last, element.ptr)
        }
        super.init(last)
    }

    /// Designated Initialiser.
    ///
    /// By default, the nodes associated with the passed-in list
    /// will not be deallocated.  This behaviour can be changed
    /// by setting `freeNodes` to `true`.
    ///
    /// - Parameter p: Pointer to a list node representing the list
    ///
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    deinit {
        guard freeNodes || freeElements else { return }
        var nextNode = self._ptr
        while let node = nextNode {
            nextNode = node.pointee.next
            if freeElements { node.pointee.data.deallocate() }
            if freeNodes { g_list_free_1(node) }
        }
    }
}

/// The `RefListRef` struct acts as a lightweight, Ref wrapper around `GList`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
/// - Note: This collection type is mainly for referencing GLib types.  For referencing primitive types, use `ReferenceListRef`.
public struct RefListRef<Element: ObjectProtocol>: RefListProtocol {
    public var ptr: UnsafeMutableRawPointer!
}

public extension RefListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GList>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GList>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Ref intialiser for a related type that implements `RefListProtocol`
    @inlinable init<T: ListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe Ref initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe Ref initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe unRef initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe unRef initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe unRef initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }
}

/// A lightweight, Ref iterator over a `GList`
public struct RefListIterator<Element: ObjectProtocol>: IteratorProtocol {
    public var list: UnsafeMutablePointer<GList>?

    /// Constructor for a RefListIterator
    /// - Parameter ptr: Optional `GList` pointer to iterate over
    @inlinable init(_ ptr: UnsafeMutablePointer<GList>?) {
        list = ptr
    }

    /// Return the next element in the list
    /// - Returns: a pointer to the next element in the list or `nil` if the end of the list has been reached
    @inlinable public mutating func next() -> Element? {
        defer { list = list?.pointee.next }
        return list.flatMap { RefListRef($0).element }
    }
}
