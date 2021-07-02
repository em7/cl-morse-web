(defpackage cl-morse-web/tests/main
  (:use :cl
        :cl-morse-web
        :rove))
(in-package :cl-morse-web/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-morse-web)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
